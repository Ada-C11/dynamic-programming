

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  seq = [0, 1, 1]
  raise ArgumentError if num <= 0
  return seq[1..num].join(' ')if num == 1 || num == 2
  (3..num).each do |i|
    seq[i] = seq[seq[i-1]] + seq[i - seq[i - 1]]
  end
  return seq[1..num].join(' ')
end