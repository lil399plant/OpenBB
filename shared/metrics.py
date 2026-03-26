"""
metrics.py — shared financial calculations used across all funds.
"""
import pandas as pd
import numpy as np


def vwap(df: pd.DataFrame) -> pd.Series:
    """Volume-weighted average price."""
    typical = (df["high"] + df["low"] + df["close"]) / 3
    return (typical * df["volume"]).cumsum() / df["volume"].cumsum()


def daily_return(series: pd.Series) -> pd.Series:
    """Percentage daily returns."""
    return series.pct_change()


def sharpe_ratio(returns: pd.Series, risk_free: float = 0.05) -> float:
    """Annualised Sharpe ratio. risk_free default = 5% (approx current rate)."""
    excess = returns - risk_free / 252
    if excess.std() == 0:
        return 0.0
    return float((excess.mean() / excess.std()) * np.sqrt(252))


def max_drawdown(returns: pd.Series) -> float:
    """Maximum peak-to-trough drawdown as a percentage."""
    cumulative = (1 + returns).cumprod()
    peak = cumulative.cummax()
    drawdown = (cumulative - peak) / peak
    return float(drawdown.min() * 100)


def annualised_return(returns: pd.Series) -> float:
    """Annualised return from a daily returns series."""
    n = len(returns)
    if n == 0:
        return 0.0
    total = (1 + returns).prod()
    return float((total ** (252 / n) - 1) * 100)


def format_pct(value: float, decimals: int = 2) -> str:
    """Format a float as a percentage string with colour indicator."""
    sign = "+" if value >= 0 else ""
    return f"{sign}{value:.{decimals}f}%"


def format_currency(value: float) -> str:
    """Format a float as a USD currency string."""
    return f"${value:,.2f}"
