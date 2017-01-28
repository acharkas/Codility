# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b)

  s = []

  (0..(a.length-1)).each do |i|
    fish_size = a[i]
    fish_direction = b[i]

    if(s.length == 0)
      s.unshift(i)
      next
    end


    while(s.length > 0 && fish_direction - b[s[0]] == -1 && a[s[0]] < fish_size)
      s.shift()
    end

    if((s.length == 0)||(s.length > 0 && fish_direction - b[s[0]] != -1))
      s.unshift(i)
    end
  end

  s.length
end
