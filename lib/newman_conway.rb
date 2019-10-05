# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  sequence = []
  n = 1
  while n <= num 
    sequence.push(get_newman_num(n))
    n += 1
  end
  return sequence.join(" ")
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
