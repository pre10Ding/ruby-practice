 def stock_picker(prices) 
    #loop thru
        #each day, find the curr_diff of the highest of all the next prices - current price
        #if curr_diff is higher than previously, store the index of the [curr,high]


    result = prices.each_with_index.reduce([0,0,0]) do |result, (price,i)|
        max = prices.drop(i).each_with_index.max #max[0] is price, [1] is index
        curr_diff = max[0]-price
        result[0] < curr_diff ? [curr_diff,i,(max[1])+i] : result #replace result if diff is bigger
    end
    result.drop(1) #drop the diff tracker
 end
 
 
p stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12