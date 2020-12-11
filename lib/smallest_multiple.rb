require 'prime'

def smallest_multiple(num)
    nums = {}
    result = 1

    (1..num).each do |n|
        division = n.prime_division
        division.each do |d|
            if !nums[d[0]] || nums[d[0]] < d[1]
                nums[d[0]] = d[1]
            end
        end
    end
    
    nums.each do |k, v|
        result *= k ** v
    end

    result
end

