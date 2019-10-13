

# Time complexity: O(n) where n is the size of the input
# Space Complexity: O(n) where n is the size of the input (space needed for storing each char)
def newman_conway(num)
  raise ArgumentError, "Number must be larger than 0" if num < 1 
  
  result = []
  num.times do |i|
    if i < 2
      result << 1
    else
      last_char = result[i - 1]
      result[i] = result[last_char - 1] + result[i - last_char]
    end
  end
  return result.join(" ")
end