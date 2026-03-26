"""
OpenBB query runner — edit this file to run different queries.
Run with: .venv/bin/python3 query.py
"""
from openbb import obb
import pandas as pd

# --- Coinbase (COIN) VWAP today ---
data = obb.equity.price.historical('COIN', interval='1m', start_date='2026-03-26', provider='yfinance')
df = data.to_df()

# VWAP = sum(price * volume) / sum(volume), using typical price (high+low+close)/3
df['typical_price'] = (df['high'] + df['low'] + df['close']) / 3
df['tp_x_vol'] = df['typical_price'] * df['volume']

vwap = df['tp_x_vol'].cumsum() / df['volume'].cumsum()
df['vwap'] = vwap

current_price = df['close'].dropna().iloc[-1]
current_vwap = df['vwap'].iloc[-1]

print(f"\nCOIN (Coinbase) — VWAP Today (Mar 26)")
print(f"Current price : ${current_price:.2f}")
print(f"VWAP          : ${current_vwap:.2f}")
print(f"vs VWAP       : {'above' if current_price > current_vwap else 'below'} by ${abs(current_price - current_vwap):.2f}")
print(f"\nIntraday range: ${df['low'].min():.2f} — ${df['high'].max():.2f}")
print(f"Total volume  : {df['volume'].sum():,.0f}")
print(f"\nLast 5 minutes:")
print(df[['close', 'volume', 'vwap']].tail())
