require 'pry'
# Time Complexity: O(n^2), where n is the number if nums in the array
# Space Complexity: O(1), because the size of the return value won't increase even when the size of the array gets bigger?
def max_sub_array(nums)
    return 0 if nums.nil?
    return nil if nums.length == 0 
    
    # could write helper method to do this also
    max_so_far = nums.min
    i = 0
    # outer loop
    while i < nums.length
        j = i
        # resetting max_ending_here each time we increment i 
        max_ending_here = 0
        # inner loop
        while j < nums.length
            max_ending_here = max_ending_here + nums[j]
            if max_so_far < max_ending_here
                max_so_far = max_ending_here
            end
            j += 1
        end
        i += 1
    end
return max_so_far
end
