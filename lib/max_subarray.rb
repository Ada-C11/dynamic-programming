
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
  return 0 if nums == nil
  return nil if nums == []
  local_max = 0
  global_max = 0

  nums.each do |num|
    local_max = local_max + num
    local_max = local_max < 0 ? 0 : local_max
    if local_max > global_max
      global_max = local_max
    end
  end

  if global_max == 0
    global_max = nums.max
  end

  return global_max
end
