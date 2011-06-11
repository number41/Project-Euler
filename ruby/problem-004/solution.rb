#!/usr/local/bin/ruby -w

def is_palindromic?(num)
	str = num.to_s
	return str == str.reverse
end

upper = 999
lower = 900
max = 0

# First shot: calculate the products of 999..990
(lower..upper).each do |i|
	(i..upper).each do |j|
		product = i*j
		max = [max,product].max if is_palindromic?(product) 
	end
end

puts "#{max} is the largest"
