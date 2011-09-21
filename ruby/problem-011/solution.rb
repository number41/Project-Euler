#!/usr/local/bin/ruby -w

# 70600674

if (ARGV.length != 2)
  puts "Usage is 'solution.rb <file name of grid> <count>'"
  exit 1
end

# Build the grid
def build_grid(stream)
  grid = []
  begin
    while grid << stream.readline.split.map{|datum|datum.to_i}
      # Do a crude check that the number of columns are
      # all consistent
      if grid.first.size != grid.last.size
        raise ArgumentError.new("Column mismatch: #{grid.first.size} != #{grid.last.size}")
      end
    end
  rescue EOFError
  end
  return grid
end

def get_right(grid, row, col, count)
  ret = []
  count.times do |i|
    ret << grid[row][col+i]
  end
  return ret
end

def get_down(grid, row, col, count)
  ret = []
  count.times do |i|
    ret << grid[row+i][col]
  end
  return ret
end

def get_down_right(grid, row, col, count)
  ret = []
  count.times do |i|
    ret << grid[row+i][col+i]
  end
  return ret
end

def get_down_left(grid, row, col, count)
  ret = []
  count.times do |i|
    ret << grid[row+i][col-i]
  end
  return ret
end

def find_largest_product(grid, count)
  # get dimensions
  rows = grid.size
  cols = grid[0].size

  # set up boundries
  left = count
  right = cols - count + 1
  bottom = rows - count + 1

  max = 0
  rows.times do |r|
    cols.times do |c|
      #check straight down
      if r < bottom
        max = [max, get_down(grid,r,c,count).reduce(1,:*)].max
      end

      #check the right
      if c < right
        max = [max, get_right(grid,r,c,count).reduce(1,:*)].max
      end

      # check diagonal down-right
      if c < right and r < bottom
        max = [max, get_down_right(grid,r,c,count).reduce(1,:*)].max
      end

      # check diagonal down-left
      if c > left and r < bottom
        max = [max, get_down_left(grid,r,c,count).reduce(1,:*)].max
      end
    end
  end

  return max
end

################################################

grid = nil
File.open(ARGV[0], "r") do |f|
  grid = build_grid(f)
end
  
puts "The grid is #{grid.size} x #{grid[0].size}"
puts "The largest product is #{find_largest_product(grid, ARGV[1].to_i)}"


