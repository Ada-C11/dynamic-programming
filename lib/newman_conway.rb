
# Time complexity: O(n) - where n equals num - 2
# Space Complexity: O(n) - where n equals num * 2 (for the space needed for the string and the array)
def newman_conway(num)
  raise ArgumentError if num <= 0
  return "1" if num == 1

  newman = [0, 1, 1]
  result = "1 1"
  i = 3

  until i >= num + 1
    current_newman = newman[newman[i - 1]] + newman[i - (newman[i - 1])]
    newman << current_newman
    result += " #{current_newman}"
    i += 1
  end

  return result
end
