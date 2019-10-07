

# Time complexity: O(n), where n is the input number
# Space Complexity: O(n), where n is the input number
def newman_conway(num)
    raise ArgumentError, "input must be greater than 0" if num < 1

  storage_hash = {
    1 => 1,
    2 => 1
  }
  
  results = []
  if num <= 2
    num.times do |i|
      results.push(storage_hash[i + 1])
    end
  else
    2.times do |i|
      results.push(storage_hash[i + 1])
    end
  end
  n = 3
  while n <= num
    prev = storage_hash[n - 1]
    storage_hash[n] = storage_hash[prev] + storage_hash[n - prev]
    results.push "#{storage_hash[n]}"
    n += 1
  end

  return results.join(" ")
end