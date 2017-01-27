# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, k)
  # array length is zero or one the array should remain the same
  if(a.length > 1)
    # if k > length we should k%length and get the remainder to be the new k
    if(k > a.length)
      k = k % a.length
    end

    b = a[0, a.length - k]
    a = a[a.length - k, a.length]
    a = a + b
  end
  a
end
