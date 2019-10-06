
# Time Complexity: O(n) where n is the length of nums
# Space Complexity: O(1)
def max_sub_array(nums)
  return nil if nums.length == 0

  max = nums[0]
  current_count = 0

  i = 0
  while i < nums.length
    current_count += nums[i]

    if current_count > max
      max = current_count
    end

    if current_count < 0
      current_count = 0
    end

    i += 1
  end

  return max
end
