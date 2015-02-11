#my failed original work is further below, here is a working solution:

def stock_picker(prices)
 current_best_profit = prices[1] - prices[0]
 # p current_best_profit
 current_best_dates = [0,1]
 prices.each_with_index do |buy_price, buy_day|
  (buy_day...prices.length).each_with_index do |sell_day|
    sell_price = prices[sell_day]
    if (sell_price - buy_price) > current_best_profit
      current_best_profit = sell_price - buy_price
      current_best_dates = [buy_day, sell_day]
    end

  end
 end
  current_best_dates
end





#input- array of stock prices
#output - day to sell, and day to buy



stock_picker([33,4,55,3,5,22,11])
# each array element represents the price of the stock for one day, presumably the days are in the order that the array is submitted

#so i think we (we = me and my brain) just need to find the highest and lowest number in the array and then return the index number of the array.

#so I will take in an array. the array.max.index does not work in IRB so I think i

#now i get why i have to buy before i can sell. i need some logic in there to say, if the index of sell day is less than buy day, then i need to

# "you should buy on day #{day_to_buy} and sell on #{day_to_sell}"

def a_failed_stock_picker(array)
  high_stock_price = array.max
  low_stock_price = array.min
  hash = Hash[array.map.with_index.to_a]
  day_to_sell = hash[high_stock_price]
  day_to_buy = hash[low_stock_price]
  p "HSP is #{high_stock_price}, LSP is: #{low_stock_price}"
   "buy day is: #{day_to_buy}, sell day is #{day_to_sell}"
end

#p stock_picker([33,4,55,3,5,22,11])

#i could also get the average price and just sell for a gain...

#the sell day has to be after the buy day
#the index of the sell day > the buy day
#if the sell day > just do what we have
#if the sell day < buy day, ...well i wanted to just get rid of it from the array,  but really, there should be a more complex calcuation that that determins what the biggest change is,
#we are essentially looking for the next
# we are looking for the min and max that is bigger than the old min and max

#new pseudo code
#id min and max from array
#if buy date < sell date
  #return those numbers
#else
  #we need to find the next highest return and this is hard because that could mean either changing the sell price or buy price
  #i think i should have a sorted list to find the next price. the reason i say this is because then i will be able to find the next price that could work, but its not exactly going to work because the numbers are out of order.
  #if i just throw out the number, which is what I want to do, there will be edge cases that will cause me to not make as much as possible

  #as I think about it, i could iterate over every pair, and see ...eh, no b/c that assumes the min and max are next to each other

  #i could sort the list, and work my way from the outside with shifts/pushes and pops until i get a value that works. then i could use those same values as the index for the day
#end comments

#if your sell and buy dates are out of order, how do you decide how to adjust? well lets just change our buy

def a_second_failed_stock_picker(array)
  high_stock_price = array.max
  low_stock_price = array.min
  hash = Hash[array.map.with_index.to_a]
  day_to_sell = hash[high_stock_price]
  day_to_buy = hash[low_stock_price]
  if day_to_buy < day_to_sell
  "on day #{day_to_buy} buy at #{low_stock_price} then on day #{day_to_sell} sell at #{high_stock_price}"
  else
    p "you can't buy on day #{day_to_buy} sell on day #{day_to_sell}"
    p hash
    #so i have a hash, presumably I should be able to pick from it, the next lowest
  end
end

#buy days are going to be on the first half,
#sell days will be on the second half


