# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  # total elements count is n(n+1)/2
  total_count = ((a.length + 1) * (a.length + 2)) / 2
  # loop over array and decrement
  a.each do |a_i|
    total_count = total_count - a_i
  end

  # the remaining will be the number
  total_count
end
