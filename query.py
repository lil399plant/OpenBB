"""
OpenBB query runner — edit this file to run different queries.
Run with: .venv/bin/python3 query.py
"""
from openbb import obb

# --- Equity price history ---
ticker = "AAPL"
data = obb.equity.price.historical(ticker, start_date="2025-01-01", provider="yfinance")
df = data.to_df()

print(f"\n{ticker} — last 5 rows:")
print(df.tail())
print(f"\nShape: {df.shape}")
