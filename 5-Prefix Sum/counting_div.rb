# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b, k)
  count_a = 0
  count_b = 0

  # divisibles for a
  if(a == 0)
    count_a = 1
  else
    count_a = (a-1)/k
  end

  # divisibles for b
  if(b == 0)
    count_b = 1
  else
    count_b = b/k
  end

  if(a == 0 && b == 0)
    count = 1
  elsif(a == 0)
    count = count_b + 1
  else
    count = count_b - count_a
  end

  count
end
