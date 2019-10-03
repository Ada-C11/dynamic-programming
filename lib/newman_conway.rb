

# Time complexity: ?  O(n)
# Space Complexity: ?
def newman_conway(num)
  sequence = []
  n = num
  while n > 0
    sequence.push(get_newman_num(n))
    n -= 1
  end
  return sequence
end

def get_newman_num(num)
  if num < 3
    return 1
  else
    num = get_newman_num(get_newman_num(num - 1)) + get_newman_num(num - get_newman_num(num - 1))
  # P(n) = P(P(n - 1)) + P(n - P(n - 1))
    return num
  end
end

# puts newman_conway(20)