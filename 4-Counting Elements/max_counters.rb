# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n, a)
  # write your code in Ruby 2.2

  max_counter = 0
  max_applied_counter = 0

  # initialize
  counters = []
  (0..n-1).each do |i|
    counters[i] = 0
  end

  a.each do |a_i|
    if(a_i == n+1)
      max_applied_counter = max_counter
    else
      if counters[a_i-1] < max_applied_counter
        counters[a_i-1] = max_applied_counter
      end
      counters[a_i-1] = counters[a_i-1] + 1

      if(counters[a_i-1] > max_counter)
        max_counter = counters[a_i-1]
      end
    end
  end

  (0..n-1).each do |i|
    if(counters[i] < max_applied_counter)
      counters[i] = max_applied_counter
    end
  end
  counters
end
