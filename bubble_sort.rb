def bubble_sort(nums)
    for j in 1..nums.length # j tracks iterations, 
        sorted_flag = true # break if nothing needs to be sorted
        nums.map!.with_index do |num, i|
            if i<nums.length-j && num > nums[i+1] #the last item of every iter is sorted so no need to go that far
                num_next = nums[i+1]
                nums[i+1] = num
                sorted_flag = false
                num_next #map the next num to curr num
            else
                num #map the curr num to curr num
            end
        end
        break if sorted_flag # break if nothing needs to be sorted
    end
    nums #return value
end


p bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]