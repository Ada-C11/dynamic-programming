
# Time Complexity: O(n), where n is the number of elements inside the nums array
# Space Complexity: O(1), because extra space required isn't determined by input
def max_sub_array(nums)
  return nil if nums == []
  return 0 if nums == nil

  max_so_far = 0
  max_ending_here = 0
  max_element = nums[0]

  i = 0

  while i <= nums.length - 1
    max_ending_here = max_ending_here + nums[i]

    if max_ending_here < 0
      max_ending_here = 0
    end

    if max_so_far < max_ending_here
      max_so_far = max_ending_here
    end

    if max_element < nums[i]
      max_element = nums[i]
    end

    i += 1
  end

  if max_so_far == 0
    max_so_far = max_element
  end

  return max_so_far
end
