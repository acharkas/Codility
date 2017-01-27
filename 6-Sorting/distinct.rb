# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  a = a.sort()
  count = 0

  (0..(a.length-1)).each do |i|
    if(a[i] != a[i+1])
      count = count + 1
    end
  end

  count
end
