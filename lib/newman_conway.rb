
# Time complexity: O(n), where n is the size of the number?
# Space Complexity: O(n), where n is the size of the output string
def newman_conway(num)
  raise ArgumentError, "n can't be less than 0" if num == 0

  return "1" if num == 1

  output_string = "1 1"

  i = 3
  while i <= num
    conway_num = newman_helper(i)
    output_string += " " + conway_num.to_s
    i += 1
  end
  return output_string
end

def newman_helper(num)
  return 1 if num <= 2

  return (newman_helper(newman_helper(num - 1)) + newman_helper(num - newman_helper(num- 1)))
end