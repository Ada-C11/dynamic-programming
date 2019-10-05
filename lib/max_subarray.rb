
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
  max_so_far = nums[0]
  max_ending_here = nums[0]
  i = 1
  while i < nums.length
      max_ending_here = max_ending_here + nums[i]
      if max_so_far < max_ending_here
          max_so_far = max_ending_here
      end
      if max_ending_here < 0
          max_ending_here = 0
      end
      i += 1
  end
  return max_so_far
end

# Initialize:
#     max_so_far = 0
#     max_ending_here = 0

# Loop for each element of the array
#   (a) max_ending_here = max_ending_here + a[i]
#   (b) if(max_ending_here < 0)
#             max_ending_here = 0
#   (c) if(max_so_far < max_ending_here)
#             max_so_far = max_ending_here
# return max_so_far