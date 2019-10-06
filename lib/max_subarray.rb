
# Time Complexity: O(n) where n is the length of nums, we iterate over the array once, and perform constant time operations each loop
# Space Complexity: O(1) we only use constant sized variables
def max_sub_array(nums)
  return 0 if nums == nil
  best_total = nil
  curr_total = 0
  nums.each do |num|
    curr_total += num
    best_total = curr_total if !best_total or curr_total > best_total
    curr_total = 0 if curr_total < 0
  end
  return best_total
end
