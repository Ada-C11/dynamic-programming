

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError, "n must be >= 0" if num == 0

  if num == 1 
    return "1"
  end

  output_string = "1 1"
  i = 3
  while i > 2 && i <= num
    new_num = newman_conway_helper(i)
    output_string += " " + new_num.to_s
    i += 1
  end 

  return output_string
end

def newman_conway_helper(num)
  return 1 if num == 1 || num == 2
  return newman_conway_helper( newman_conway_helper(num - 1)) + newman_conway_helper(num - newman_conway_helper(num - 1))
end