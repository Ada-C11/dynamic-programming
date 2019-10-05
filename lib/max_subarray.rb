# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
  return nil if nums == []

  max_arr = nums[0]
  current_max = 0
  counter = 0

  while counter < nums.length
    current_max = current_max + nums[counter]
    if (max_arr < current_max)
      max_arr = current_max
    end

    if current_max < 0
      current_max = 0
    end
    counter += 1
  end

  return max_arr
end
