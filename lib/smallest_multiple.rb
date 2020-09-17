# Implement your procedural solution here!

def smallest_multiple(input)
  i = 1
  loop do
    multiple = input * i
    return multiple if (1..input).to_a.all? {|n| multiple % n == 0}
    i += 1
  end
end
