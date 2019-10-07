
# Time Complexity: O(n ** 2), where n is the number of elements in the input array.
# Space Complexity: O(1)
def max_sub_array(nums)
  if nums == nil || nums == []
    return nil
  elsif nums.length == 1
    return nums[0]
  end

  max = nums[0]
  current_sum = nums[0]
  j = 1

  nums.each_with_index do |outer_num, i|
    current_sum = outer_num
    j = i + 1

    nums[i..-1].each do
      current_sum += nums[j] unless nums[j] == nil
      j += 1
      if current_sum > max
        max = current_sum
      end
    end
  end

  return max
end
