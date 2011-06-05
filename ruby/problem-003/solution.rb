#!/usr/local/bin/ruby -w

def largest_prime_factor(num)
	limit = num
	# Break down the number until it is odd
	while (limit % 2 == 0)
		limit /= 2
	end

  n = 3
	while (n*n <= limit)
		while (limit % n == 0) 
			limit /= n	
		end
    n += 2
	end

	limit
end

if (ARGV.length == 0)
	puts "Usage is 'solution.rb [number]"
  exit 1
end

puts "The largest prime factor of #{ARGV[0]} is #{largest_prime_factor(ARGV[0].to_i)}"
