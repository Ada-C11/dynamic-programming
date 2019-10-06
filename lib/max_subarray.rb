
# Time Complexity: O(n) where n is the number of items in the array
# Space Complexity: O(1)
def max_sub_array(nums)
  return 0 if nums == nil
  return nil if nums.length == 0
  max_sum = nums[0]
  sum = 0

  nums.length.times do |i|
    sum = [nums[i], sum + nums[i]].max
    if sum > max_sum
      max_sum = sum
    end
  end
  return max_sum
end
