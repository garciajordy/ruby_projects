def stock_picker(array)   
    result = []          # array for the results of the days
    extra = 0             # the extra money we will make
    array.each_with_index { |price1, day1|   # check prices with days
      array.each_with_index { |price2, day2|    # nested iteration for second days and prices 
        if day1 < day2                         
          # as you have to buy before selling 
          if (price2 - price1) > extra
            extra = price2 - price1
            result[0] = day1
            result[1] = day2
          end
        end
      }
    }
    puts "if you buy on day #{result[0]} and sell on day #{result[1]} you will have  $#{extra} extra" # return a string with results
  end 
  stock_picker([17,3,6,9,15,8,6,1,10]) 