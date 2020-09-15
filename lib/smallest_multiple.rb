# Implement your procedural solution here!
#iterate range from 2020 to 9999 ? check to see if number % item(1 - 20) === 0
#divisible = false
#1st iteration 2020 (2..20) check_evenly_divisible(i) if false divisible = false, break else divisible equals true 
#if divisible equals true return number

#(1..20) to check if number % item == 0
def check_if_evenly_divisible(number, count) 
  divisible = false 
  (1..count).each do |i|
    if number % i == 0
      divisible = true
    else
      return false
    end
  end
  return divisible
end

def smallest_multiple(count)
  start = 2
  if count >= 20 
    start = 200000000 
  end
  while start < 300000000 
    if check_if_evenly_divisible(start, count)
      return start 
    else
      start+=1
    end
  end
end