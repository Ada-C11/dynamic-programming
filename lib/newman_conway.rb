

# Time complexity: O(n), where n is approx. equal to num
# Space Complexity: O(n), where n is approx. equal to num for the series array & series_string
def newman_conway(num)
  if num == 0
    raise ArgumentError, "Num cannot be zero"
  end

  p1 = 1
  p2 = 1
  counter = 2

  series = [0, p1, p2]
  series_string = ""

  if num < 2
    series[1..num].each do |num|
      series_string += "#{num} "
    end
  else
    until counter == num
      counter += 1
      p_next = series[series[counter - 1]] + series[counter - series[counter - 1]]
      series << p_next
    end

    series[1..-1].each do |num|
      series_string += "#{num} "
    end
  end

  return series_string.strip
end
