#!/usr/local/bin/ruby -w

if (ARGV.length == 0)
	puts "Usage is 'solution.rb [number]"
	exit 1
end

# Start off with the upper limit
result = ARGV[0].to_i

# Iterate through the rest
(result-1).downto(2) do |i|
	step = result
	while (result % i != 0)
		result += step
	end
	puts "End of iteration #{i}, result is #{result}"
end

puts "The smallest number divisible by 1..#{ARGV[0]} is #{result}"
