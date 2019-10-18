def max(num1, num2)
    return num1 > num2 ? num1 : num2
end

def max_sub_array(nums)
    return 0 if nums == nil

    max_now = max = nums[0]

    (1...nums.length).each do |i|
        max_now = nums[i] > max_now + nums[i] ? nums[i] : max_now + nums[i]
        max = max_now if max_now > max
    end
    return max
end
