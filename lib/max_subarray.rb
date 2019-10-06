
# Time Complexity: O(n^2) where n is size of nums
# Space Complexity: O(n)
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums.length == 0

    size = nums.length
    max_so_far = find_min(nums)
  
    i = 0
    while i < size
      max_ending_here = 0
      j = i
      while j < size
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

def find_min(nums)
    min = 0
    nums.each do |num|
        if num < min
            min = num
        end
    end 
    return min
end
