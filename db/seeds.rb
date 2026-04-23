# frozen_string_literal: true

# Default watchlist (only seeds if empty)
if WatchlistItem.none?
  %w[AAPL MSFT NVDA TSLA AMD].each_with_index do |symbol, i|
    WatchlistItem.create!(symbol: symbol, position: i)
  end
  puts "Seeded #{WatchlistItem.count} watchlist items"
end

# Default option price tracker tickers (only seeds if empty)
if TrackedTicker.none?
  %w[SQQQ NOK UMC WULF F XOM].each do |symbol|
    TrackedTicker.create!(symbol: symbol, active: true, config: {})
  end
  puts "Seeded #{TrackedTicker.count} tracked tickers"
end
