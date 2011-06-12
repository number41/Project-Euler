#!/usr/local/bin/ruby -w
require 'Prime'

if (ARGV.length == 0)
	puts "Usage is 'solution.rb [number]"
	exit 1
end

n = ARGV[0].to_i
i = 0
num = 0
Prime.each {|p| i+=1; num = p; break if i == n}

puts "The #{n}(st/nd/whatever) prime is #{num}"
