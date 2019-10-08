

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num == 0
  return "1" if num == 1
  result = "1 1"
  n = 3
  while n <= num
    conway_num = newman_recursive(n)
    result += " " + conway_num.to_s
    n += 1
  end
  return result
end

def newman_recursive(n)
  return 1 if n <= 2
  return newman_recursive(newman_recursive(n - 1)) + newman_recursive(n - newman_recursive(n - 1))
end
