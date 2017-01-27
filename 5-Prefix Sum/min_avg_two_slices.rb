# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  min_avg_value = (a[0] + a[1])/ 2.0
  min_avg_position = 0

  (0..(a.length-2)).each do |i|
    # 2 elements average
    if(((a[i].to_i + a[i + 1].to_i)/ 2.0) < min_avg_value)
      min_avg_value = (a[i].to_i + a[i + 1].to_i)/ 2.0
      min_avg_position = i
    end

    # 3 elements average
    if(((a[i].to_i + a[i + 1].to_i + a[i + 2].to_i)/ 3.0) < min_avg_value)
      min_avg_value = (a[i].to_i + a[i + 1].to_i + a[i + 2].to_i)/ 3.0
      min_avg_position = i
    end
  end

  # last 2 elements
  if(((a[a.length - 1].to_i + a[a.length - 2].to_i)/ 2.0) < min_avg_value)
    min_avg_value = (a[a.length - 1].to_i + a[a.length - 2].to_i)/ 2.0
    min_avg_position = a.length - 2
  end

  min_avg_position
end
