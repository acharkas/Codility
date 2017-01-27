def solution(x, y, d)
  # write your code in Ruby 2.2
  jumps_count = 0
  actual_distance = y - x
  if(actual_distance == 0)
    jumps_count = 0
  elsif(d > actual_distance)
    jumps_count = 1
  else
    jumps_count = actual_distance/d
    increment = (actual_distance % d == 0)?0 : 1
    jumps_count  = jumps_count + increment
  end

  jumps_count
end
