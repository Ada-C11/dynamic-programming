# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  return "1" if num == 1
  array = [1, 1]
  i = 2
  until i == num
    # O(1)
    prev = array[i - 1]
    # O(1)
    # need -1 b/c index is 1 less than value of prev
    curr = array[prev - 1] + array[i - prev]
    # O(1)
    array.push(curr)
    i += 1
  end
  return array.join(" ")
end
