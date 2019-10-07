require "pry"

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  output_array = []
  if num == 0
    raise ArgumentError("Input must be greater than 0.")
  elsif num == 1
    output_array.push(1)
  elsif num == 2
    output_array.push(1)
    output_array.push(1)
  else
    output_array = [1, 1]
    i = 2
    while i < num
      output_array.push(output_array[i - 1] + output_array[i - output_array[i - 1]])
      i += 1
    end
  end

  output_string = "1"
  if num > 1
    output_array[1..-1].each do |num|
      output_string += " #{num}"
    end
  end

  return output_string
end
