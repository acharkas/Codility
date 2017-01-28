# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  size = 0
  value = -1
  (0..(a.length-1)).each do |i|
    if(size == 0)
      size = 1
      value = a[i]
    else
      if(value != a[i])
        size = size - 1
      else
        size = size + 1
      end
    end
  end

  candidate = -1
  leader = -1
  count = 0
  index = -1

  if(size > 0)
    candidate = value
  end

  (0..(a.length-1)).each do |i|
    if a[i] == candidate
      count = count + 1
      index = i
    end
  end

  if count > (a.length/2)
    leader = candidate
  else
    index = -1
  end

  index
end
