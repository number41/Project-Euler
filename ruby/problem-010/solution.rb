#!/usr/local/bin/ruby -w

require 'Prime'

if (ARGV.length == 0)
	puts "Usage is 'solution.rb [limit]"
	exit 1
end

limit = ARGV[0].to_i
#sum = 0
#Prime.each {|p| break if p > limit; sum+=p; }
sum = Prime.inject(0){|s,p|break s if p > limit; s+p}
puts "#{sum}"
