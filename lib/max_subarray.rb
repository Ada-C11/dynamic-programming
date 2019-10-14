
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums == nil || nums.empty?
    max = nums[0]
    curr_max = nums[0]
    (1...nums.length).each do |i|
        curr_max = curr_max + nums[i]
        if nums[i] > curr_max
            max = nums[i] if nums[i] > max
            curr_max = nums[i]
        else
            max = curr_max if curr_max > max
        end
    end
    return max
end
