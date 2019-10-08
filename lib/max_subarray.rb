
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
  return 0 if nums == nil
    
  max = nums[0]
  current_max = 0
  count = 0

  while count < nums.length
    current_max = current_max + nums[count]

    max = current_max if max < current_max
    current_max = 0 if current_max < 0

    count += 1
  end

  return max
end
