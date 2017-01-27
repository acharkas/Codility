# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  # sort a
  a = a.sort
  odd = 0

  # loop over the array
  (0..(a.length-1)).step(2) do |i|
    if((i+1 >= a.length) || ((i+1 < a.length) && (a[i] != a[i+1])))
      odd = a[i]
      break
    end
  end

  odd
end
