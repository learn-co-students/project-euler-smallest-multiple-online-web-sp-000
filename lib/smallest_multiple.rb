def smallest_multiple(num)
  if num < 3
    # if the number is 1 or 2 then the answer is iteself
    return num
  end

  # no need to check 1;
  (2..num).reduce() { |sum, num| lcm(sum, num) }
end



def lcm(a,b)
  #least common multiple for 2 numbers
  # also a*b/greatest common denominator (a,b)
  final_val, bigger_val = [a > b ? a : b] * 2
  smaller_val = bigger_val == b ? a : b

  while final_val % smaller_val != 0
    final_val += bigger_val
  end

  return final_val
end


# alternate solution
# def smallest_multiple(input)
#   placeholder = 1
#   (2..input).each do |i|
#     placeholder *= i / gcd(placeholder, i)
#   end
#   placeholder
# end
#
# def gcd(a, b)
#   while b > 0
#     a %= b
#     return b if a == 0
#     b %= a
#   end
#   a
# end
