
# Time Complexity: O(1), where n is the number of elements in the array
# Space Complexity: O(1)
def max_sub_array(nums)
  return 0 if nums == nil

  max = nums[0]
  max_here = 0

  nums.each do |num|
    max_here += num
    if max_here > max
      max = max_here
    end

    if max_here < 0
      max_here = 0
    end
  end

  return max
end
