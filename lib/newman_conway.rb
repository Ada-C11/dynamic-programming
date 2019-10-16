

# Time complexity: O(n)
# Space Complexity: O(n)


def newman_conway(nums)
  result = Array.new()
  raise ArgumentError if nums == 0
  return "1" if nums == 1 
  result[1] = 1
  result[2] = 1
  if nums > 2
    (3..nums).each do |num|
    result[num] = result[result[num - 1]] + result[num - result[num - 1]]
    end
  end
  result.delete_at(0)
  return result.join(" ")
end
