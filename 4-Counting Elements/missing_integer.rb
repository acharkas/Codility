# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  counts = {}
  missing = -1

  a.each do |a_i|
    counts[a_i] = counts[a_i].to_i + 1
  end

  (1..a.length).each do |i|
    if(counts[i].nil?)
      missing = i
      break
    end
  end

  if(missing == -1)
    missing = a.length + 1
  end

  missing
end
