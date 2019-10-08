# Time complexity: O(n) where n is the size of num
# Space Complexity:
def newman_conway(num)
  raise ArgumentError if num == 0

  output = []
  i = 1

  while i <= num
    output << conway_helper(i, output)
    i += 1
  end
  return output.join(" ")
end

def conway_helper(num, output)
  return 1 if num < 3
  return output[num - 1] if output[num - 1]
  helper = conway_helper(num - 1, output)
  conway_helper(helper, output) + conway_helper(num - helper, output)
end
