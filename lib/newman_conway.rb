# Time complexity: O(n) where n is the size of num
# Space Complexity:
def newman_conway(num)
  raise ArgumentError if num == 0

  output = []
  i = 1

  while i <= num
    output << conway_helper(i)
    i += 1
  end
  return output.join(" ")
end

def conway_helper(num)
  return 1 if num < 3
  conway_helper(conway_helper(num - 1)) + conway_helper(num - conway_helper(num - 1))
end
