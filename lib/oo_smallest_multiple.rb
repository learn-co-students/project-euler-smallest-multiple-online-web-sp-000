# Implement your object-oriented solution here!

class SmallestMultiple
  def initialize(input)
    @input = input
  end
  def lcm
    i = 1
    loop do
      multiple = @input * i
      return multiple if (1..@input).to_a.all? {|n| multiple % n == 0}
      i += 1
    end
  end
end
