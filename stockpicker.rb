require 'pry-byebug'

def stock_picker(stock_prices)
    min_price = stock_prices[0]
    min_index = 0

    profit = 0
    days = [0,0]

    stock_prices.each_with_index do |price, i|
        if price < min_price
            min_price = price
            min_index = i
            next
        end

        if price - min_price > profit
            profit = price - min_price
            days = [min_index, i]
        end
    end
    days
end

array = [17,3,6,9,15,8,6,1,10]

p stock_picker(array)