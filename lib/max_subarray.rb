
# Time Complexity: O(n) - where n is equal to the length of nums - 1
# Space Complexity: O(1) - constant
def max_sub_array(nums)
  return nil if nums == nil || nums.empty?

  current_sum = nums.first
  max = nums.first

  (1...nums.length).each do |i|
    current_sum += nums[i]

<<<<<<< HEAD
    if current_sum > max
      max = current_sum
    end

    if current_sum < 0
      current_sum = 0
=======
    if nums[i] > current_sum
      max = nums[i] if nums[i] > max
      current_sum = nums[i]
    else
      max = current_sum if current_sum > max
>>>>>>> ae90e4cbdf7ee33dfe0aff39878d4b18fc75301e
    end
  end

  return max
end
