# A string S consisting of N characters is considered to be properly nested if any of
# the following conditions is true:

# S is empty;
# S has the form "(U)" or "[U]" or "{U}" where U is a properly nested string;
# S has the form "VW" where V and W are properly nested strings.
# For example, the string "{[()()]}" is properly nested but "([)()]" is not.

def solution(s)

	properly_nested = 1

	bracket_1_open = 0 # {
	bracket_2_open = 0 # (
	bracket_3_open = 0 # [

	bracket_1_close = 0 # }
	bracket_2_close = 0 # )
	bracket_3_close = 0 # ]

	stack = []

	#a.unshift('x')


	# loop over string
	(0..(s.length-1)).each do |i|
		if s[i] == "{"
			stack.unshift(1)
		elsif s[i] == "}"
		  if stack.length > 0 && stack[0] == 1
		    stack.shift()
		  else
		    properly_nested = 0
		    break
		  end
		elsif s[i] == "("
      stack.unshift(2)
    elsif s[i] == ")"
			 if stack.length > 0 && stack[0] == 2
		    stack.shift()
		  else
		    properly_nested = 0
		    break
		  end
		elsif s[i] == "["
			stack.unshift(3)
    elsif s[i] == "]"
			 if stack.length > 0 && stack[0] == 3
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
