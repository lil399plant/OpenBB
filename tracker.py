"""
tracker.py — live portfolio tracker across all funds.
Fetches current prices via OpenBB and calculates P&L.

Usage:
    .venv/bin/python3 tracker.py              # all funds
    .venv/bin/python3 tracker.py equity_value # one fund
"""
import sys
import pandas as pd
from pathlib import Path
from openbb import obb

sys.path.insert(0, str(Path(__file__).parent))
from shared.metrics import format_pct, format_currency

FUNDS = ["equity_value", "equity_growth"]  # fx_carry handled separately


def fetch_price(ticker: str) -> float:
    """Fetch the latest close price for a ticker."""
    try:
        data = obb.equity.price.quote(ticker, provider="yfinance").to_df()
        return float(data["last_price"].iloc[0])
    except Exception:
        try:
            data = obb.equity.price.historical(ticker, provider="yfinance").to_df()
            return float(data["close"].iloc[-1])
        except Exception as e:
            print(f"  ⚠ Could not fetch {ticker}: {e}")
            return None


def track_equity_fund(fund_name: str) -> pd.DataFrame:
    """Load holdings CSV, fetch live prices, compute P&L."""
    path = Path(f"funds/{fund_name}/holdings.csv")
    if not path.exists():
        print(f"No holdings file found for {fund_name}")
        return None

    df = pd.read_csv(path)
    prices, market_values, pnl, pnl_pct = [], [], [], []

    for _, row in df.iterrows():
        price = fetch_price(row["ticker"])
        if price is None:
            prices.append(None)
            market_values.append(None)
            pnl.append(None)
            pnl_pct.append(None)
            continue

        mv = price * row["shares"]
        cost = row["avg_cost"] * row["shares"]
        pl = mv - cost
        pl_pct = (pl / cost) * 100

        prices.append(price)
        market_values.append(mv)
        pnl.append(pl)
        pnl_pct.append(pl_pct)

    df["current_price"] = prices
    df["market_value"]  = market_values
    df["pnl"]           = pnl
    df["pnl_pct"]       = pnl_pct
    return df


def print_equity_summary(fund_name: str, df: pd.DataFrame):
    """Print a formatted summary table for an equity fund."""
    clean = df.dropna(subset=["market_value"])
    total_mv   = clean["market_value"].sum()
    total_cost = (clean["avg_cost"] * clean["shares"]).sum()
    total_pnl  = clean["pnl"].sum()
    total_pct  = (total_pnl / total_cost) * 100 if total_cost else 0

    title = fund_name.replace("_", " ").upper()
    print(f"\n{'='*60}")
    print(f"  {title}")
    print(f"{'='*60}")
    print(f"  {'TICKER':<8} {'SHARES':>6} {'COST':>10} {'PRICE':>10} {'MKT VAL':>12} {'P&L':>10} {'%':>8}")
    print(f"  {'-'*70}")

    for _, row in clean.iterrows():
        cost_str  = format_currency(row["avg_cost"])
        price_str = format_currency(row["current_price"])
        mv_str    = format_currency(row["market_value"])
        pnl_str   = format_currency(row["pnl"])
        pct_str   = format_pct(row["pnl_pct"])
        print(f"  {row['ticker']:<8} {int(row['shares']):>6} {cost_str:>10} {price_str:>10} {mv_str:>12} {pnl_str:>10} {pct_str:>8}")

    print(f"  {'-'*70}")
    print(f"  {'TOTAL':<8} {'':>6} {'':>10} {'':>10} {format_currency(total_mv):>12} {format_currency(total_pnl):>10} {format_pct(total_pct):>8}")
    print(f"{'='*60}")


def run(target: str = None):
    funds_to_run = [target] if target else FUNDS

    for fund in funds_to_run:
        if fund not in FUNDS:
            print(f"Unknown fund: {fund}. Available: {FUNDS}")
            continue
        print(f"\nFetching prices for {fund}...")
        df = track_equity_fund(fund)
        if df is not None:
            print_equity_summary(fund, df)

            # Save snapshot to data/
            out_path = Path(f"data/{fund}_snapshot.csv")
            out_path.parent.mkdir(exist_ok=True)
            df.to_csv(out_path, index=False)
            print(f"  → Saved to {out_path}")


if __name__ == "__main__":
    target = sys.argv[1] if len(sys.argv) > 1 else None
    run(target)
