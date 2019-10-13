
# Time Complexity: O(n) where n is the length of the input array
# Space Complexity: O(1)
def max_sub_array(nums)
  return 0 if nums == nil
    
  max_so_far = 0
  max = nums[0]
  i = 0
    
  while i < nums.length
    max_so_far += nums[i]
    
    if max_so_far > max
      max = max_so_far
    end
    if max_so_far < 0
      max_so_far = 0
    end
    i += 1
  end
  return max
end
