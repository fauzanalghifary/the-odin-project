def stock_picker (stock_prices)
  best_days = []
  best_profit = 0
  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        profit = sell_price - buy_price
        if profit > best_profit
          best_profit = profit
          best_days = [buy_day, sell_day]
        end
      end
    end
  end
  best_days
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])