# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  if num < 1
    raise ArgumentError, "Enter a positive integer"
  end

  return "1" if num == 1

  arr = [0, 1, 1]

  sequence = ""
  sequence << arr[1].to_s + " "
  sequence << arr[2].to_s + " "

  counter = 3

  while counter <= num
    arr[counter] = arr[arr[counter - 1]] + arr[counter - arr[counter - 1]]
    sequence << arr[counter].to_s + " "
    counter += 1
  end

  return sequence[0...-1]
end
