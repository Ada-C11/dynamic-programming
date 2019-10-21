
# Time Complexity: O(n) - where n is equal to the length of nums - 1
# Space Complexity: O(1) - constant
def max_sub_array(nums)
  return nil if nums == nil || nums.empty?

  current_sum = nums.first
  max = nums.first

  (1...nums.length).each do |i|
    current_sum += nums[i]

    if nums[i] > current_sum
      max = nums[i] if nums[i] > max
      current_sum = nums[i]
    else
      max = current_sum if current_sum > max
    end
  end

  return max
end
