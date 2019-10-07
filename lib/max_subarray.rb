
# Time Complexity: O(n), where n is the number of elements input in the array.
# Space Complexity: O(1)
def max_sub_array(nums)
  if nums == nil || nums == []
    return nil
  elsif nums.length == 1
    return nums[0]
  end

  max = nums[0]
  current_sum = 0

  nums.each do |num|
    current_sum += num
    if max < current_sum
      max = current_sum
    end
    if current_sum < 0
      current_sum = 0
    end
  end

  return max
end
