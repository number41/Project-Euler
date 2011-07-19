#!/usr/local/bin/ruby -w

def product_of_digits(str)
	if (str.include? "0")
		return 0
	end

	return str.chars.inject(1) {|p,c| p *= c.to_i}
end

if (ARGV.length == 0)
	puts "Usage is 'solution.rb <file name>'"
	exit 1
end

# Through some g*****n sorcery, the 'gets' knows to treat ARGV[0] as name
# of a file and to read in a line from that.
big_num = gets
i, max = 0, 0
while i < big_num.length - 5
	num = big_num[i,5]
	max = [max,product_of_digits(big_num[i,5])].max
	i=i+1
end

puts "Largest number is #{max}"
