#!/usr/local/bin/ruby

def sum_multiples(k, n)
	upper = ((n-1)/k).floor
	return k * ((upper * (upper+1))/2)
end

limit = 1000
sum = sum_multiples(3, limit) + sum_multiples(5,limit) - sum_multiples(15,limit)
puts sum
