
# Time Complexity: O(n) where n is the value of nums
# Space Complexity: O(1)
def max_sub_array(nums)
  return 0 if nums == nil

  max_so_far = nil
  max_ending_here = 0

  nums.each do |num|
    max_ending_here = max_ending_here + num
    max_so_far = max_ending_here if !max_so_far || max_ending_here > max_so_far
    max_ending_here = 0 if max_ending_here < 0
  end
  return max_so_far
end
