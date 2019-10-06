

# Time complexity: O(n) where n is the size of num
# Space Complexity: O(n) becuase we are creating a new array of size n

def newman_conway(num)
  raise ArgumentError if num <= 0
  sequence = Array.new(num)
  num.times do |i|
    if i < 2
      sequence[i] = 1
    else
      previous = sequence[i - 1]
      sequence[i] = sequence[previous - 1] + sequence[i - previous]
    end
  end
  return sequence.join(" ")
end
