#!/usr/local/bin/ruby -w

def fib_up_to(max)
	i1, i2 = 1, 1
	while i1 <= max
		yield i1
		i1, i2 = i2, i1+i2
	end
end

sum = 0
fib_up_to(4000000-1) {|f| sum += f if f % 2 == 0}
puts sum
