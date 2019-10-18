def newman_conway(num)  
raise ArgumentError, "must be a natural number" if num <= 0
return "1" if num == 1

  m = Array.new(num)
  m[0] = 0
  m[1] = 1
  m[2] = 1
  output = "1"
  count = 3
  
  while count <= num
    m[count] = m[m[count - 1]] + m[count - m[count - 1]]
    count += 1
  end

  (2..num).each do |i|
    output += "#{m[i]}"
  end
  return output
end
