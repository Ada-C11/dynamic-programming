
# Time Complexity: O(n^2), where n is the number of elements in the array
# Space Complexity: O(1)
def max_sub_array(nums)
  return 0 if nums == nil

  i = 0
  max = nums[0]

  for start_val in nums
    max_here = 0
    for val in nums[i..-1]
      max_here += val
      if max_here > max
        max = max_here
      end
    end
    i += 1
  end

  return max
end
