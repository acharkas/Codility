def solution(s)

	properly_nested = 1

	bracket_2_open = 0 # (
	bracket_2_close = 0 # )

	stack = []

	# loop over string
	(0..(s.length-1)).each do |i|
		if s[i] == "("
      stack.unshift(2)
    elsif s[i] == ")"
			 if stack.length > 0 && stack[0] == 2
		    stack.shift()
		  else
		    properly_nested = 0
		    break
		  end
		end
	end

  if(stack.length > 0)
    properly_nested = 0
  end

	properly_nested

end
