# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  a = a.sort()
  contains_triangle = 0

  # loop over array, and check triangles
  (0..(a.length-3)).each do |i|
    if(check_triangle(a[i], a[i+1], a[i+2]))
      contains_triangle = 1
      break
    end
  end

  contains_triangle
end

def check_triangle a,b,c
  is_triangle = false

  # the only needed check if the two small numbers are greater than the third one
  if(a + b > c)
    is_triangle = true
   end

   is_triangle
end
