
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
  return nil if nums[0] == nil

  i = 0
  max_so_far = nums[i]

  while nums[i] != nil
    max_this_round = max_sub_array_helper(nums, i)
    max_so_far = max_this_round > max_so_far ? max_this_round : max_so_far
    i += 1
  end
  return max_so_far
end

def max_sub_array_helper(nums, i)
  max_so_far = nums[i]
  max_ending_here = 0

  while nums[i] != nil
    max_ending_here = max_ending_here + nums[i]
    if max_so_far < max_ending_here
      max_so_far = max_ending_here
    end
    i += 1
  end
  return max_so_far
end
