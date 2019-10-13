# Time complexity: O(n), where n is directly proportional to the size of num
# Space Complexity: O(n), where n is directly proportional to the size of num
def newman_conway(num)
  if num <= 0 
    raise ArgumentError, "Must pass in integer greater than zero, received: #{num}" 
  end 

  hash = {1 => 1, 2 => 1}
  result = []
  count = 1

  while count <= num 
    if count == 1 || count == 2 
      result.push(1)
    else 
      last = hash[count - 1] 
      current = hash[last] + hash[count - last]
      hash[count] = current 
      result.push(current) 
    end 
    
    count += 1
  end
  
  return result.join(" ")
end