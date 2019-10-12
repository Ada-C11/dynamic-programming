

# Time complexity: O(n), where n is the input
# Space Complexity: O(n), where n is the input
def newman_conway(num)
  raise ArgumentError if num == 0
  return "1" if num == 1
  return "1 1" if num == 2

  conway_numbers = Array.new(num)
  conway_numbers[1] = 1
  conway_numbers[2] = 1

  i = 3
  while i <= num
    conway_numbers[i] = conway_numbers[conway_numbers[i - 1]] + conway_numbers[i - (conway_numbers[i - 1])]

    i += 1
  end

  conway_numbers = conway_numbers[1..-1].join(" ")
  return conway_numbers
end
