# Implement your object-oriented solution here!
class SmallestMultiple
  
  attr_accessor :count, :lcm
  
  def initialize(count)
    @count = count
    @lcm = self.smallest_multiple
  end
  
  def check_if_evenly_divisible(number)
    evenly = false 
    (2..self.count).each do |i| 
      if number % i == 0 
        evenly = true 
      else 
        return false 
      end
    end
    return evenly
  end
  
  def smallest_multiple 
    start = 2 
    if self.count >=20 
      start = 200000000
    end 
    while start < 300000000 
      if self.check_if_evenly_divisible(start) 
        return start 
      else 
        start+=1 
      end
    end
    return "not found"
  end
end