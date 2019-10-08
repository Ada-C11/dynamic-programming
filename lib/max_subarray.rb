
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
  return 0 if nums == nil
  current_sum = nums[0]
  current_max = current_sum
  i = 1
  while i < nums.length
    current_sum = [current_sum + nums[i], nums[i]].max
    current_max = [current_sum, current_max].max
    i += 1
  end
  return current_max
end
