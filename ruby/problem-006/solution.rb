#!/usr/local/bin/ruby -w

def sum_to_n(n)
	return (n*(n+1))/2
end

def sum_square_to_n(n)
	return (n*(n+1)*((2*n)+1))/6
end

if (ARGV.length == 0)
	puts "Usage is 'solution.rb [n]"
	exit 1
end

n = ARGV[0].to_i
difference = (sum_to_n(n) ** 2) - sum_square_to_n(n)
puts "The difference is #{difference}"


