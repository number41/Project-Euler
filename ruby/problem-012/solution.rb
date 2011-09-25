require 'prime'

def sum(i)
  return (i*(i+1)/2)
end

i = 0
while true
  i = i+1
  n = sum(i)
  break if n.prime_division.inject(1) {|r,d| r*=(d.last+1)} > 500
end
puts "#{sum(i)}"
