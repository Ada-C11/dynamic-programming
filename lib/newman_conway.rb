# Time complexity: O(n) where n is the input value.
# Space Complexity: O(n) where n is the input value.
def newman_conway(num)
  output_array = []
  if num == 0
    raise ArgumentError
  elsif num == 1
    return "1"
  elsif num == 2
    return "1 1"
  else
    output_array = [0, 1, 1]
    i = 3
    while i <= num
      output_array.push(output_array[output_array[i - 1]] + output_array[i - output_array[i - 1]])
      i += 1
    end
  end

  output_string = "1"
  output_array[2..-1].each do |num|
    output_string += " #{num}"
  end

  return output_string
end
