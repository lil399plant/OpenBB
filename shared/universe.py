"""
universe.py — defines the stock/FX universes each fund screens from.
Edit these lists to expand or restrict coverage.
"""

# Large-cap US equities (S&P 100 subset for speed)
EQUITY_UNIVERSE = [
    "AAPL", "MSFT", "GOOGL", "AMZN", "NVDA", "META", "TSLA", "BRK-B",
    "JPM", "V", "UNH", "XOM", "JNJ", "WMT", "MA", "PG", "HD", "CVX",
    "MRK", "ABBV", "KO", "PEP", "AVGO", "COST", "TMO", "MCD", "ACN",
    "BAC", "CSCO", "LIN", "NEE", "ABT", "CRM", "TXN", "DHR", "ADBE",
    "NFLX", "CMCSA", "VZ", "NKE", "PM", "INTC", "T", "RTX", "HON",
    "QCOM", "UPS", "AMGN", "IBM", "GS", "BLK", "SPGI", "CAT", "DE",
    "BA", "MMM", "LMT", "AXP", "USB", "SCHW", "C", "GE", "F", "GM",
    "COIN", "SQ", "PYPL", "SNAP", "UBER", "LYFT", "ABNB", "SHOP"
]

# FX pairs for carry strategy (quoted against USD)
FX_UNIVERSE = [
    "AUDUSD", "NZDUSD", "USDCAD", "USDJPY", "USDCHF",
    "EURUSD", "GBPUSD", "USDMXN", "USDBRL", "USDZAR"
]

# High-yield (carry longs) vs low-yield (carry shorts) — update with current rates
FX_HIGH_YIELD  = ["AUDUSD", "NZDUSD", "USDMXN", "USDBRL", "USDZAR"]
FX_LOW_YIELD   = ["USDJPY", "USDCHF", "EURUSD"]
