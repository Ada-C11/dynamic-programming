

# Time complexity: O(n) where n is the size of num
# Space Complexity: O(n) bc I am making an array dependent on size of num, n
def newman_conway(num)
  if num == 0
    raise ArgumentError, "Invalid, you can't use 0!"
  elsif num == 1
    return "1"
  elsif num == 2
    return "1 1"
  end

  p = Array.new(num)
  p[0] = nil
  p[1] = 1
  p[2] = 1

  sequence = "1 1"

  i = 3
  while i <= num
    p[i] = p[p[i - 1]] + p[i - p[i - 1]]
    sequence += " #{p[i]}"

    i += 1
  end

  return sequence
end
