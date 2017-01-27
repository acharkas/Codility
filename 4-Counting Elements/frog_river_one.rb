# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, a)
  # write your code in Ruby 2.2
  min_occurance = {}
  earliest_time = -1

  # loop over a and calculate min occurance
  (0..a.length-1).each do |i|
    if(min_occurance[a[i]].nil?)
      min_occurance[a[i]] = i
    end
  end


  # loop for x
  (1..x).each do |x_i|
    if(min_occurance[x_i].nil?)
      earliest_time = -1
      break
    else
      if earliest_time.to_i < min_occurance[x_i].to_i
        earliest_time = min_occurance[x_i]
      end
    end
  end
  earliest_time
end
