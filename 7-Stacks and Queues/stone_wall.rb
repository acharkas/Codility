# You are going to build a stone wall. The wall should be straight and N meters long,
# and its thickness should be constant; however, it should have different heights in
# different places. The height of the wall is specified by a zero-indexed array H of
# N positive integers. H[I] is the height of the wall from I to I+1 meters to the
# right of its left end. In particular, H[0] is the height of the wall's left end
# and H[N-1] is the height of the wall's right end.

# The wall should be built of cuboid stone blocks (that is, all sides of such blocks
# are rectangular). Your task is to compute the minimum number of blocks needed to
# build the wall.

def solution(h)

	stack = []
	max_wall_height = 0
	stones_count = 0

	# loop over H
	h.each do |h_i|
	  if stack.length > 0 && max_wall_height == h_i
	    next
		elsif stack.length > 0 && max_wall_height > h_i
			# pop all elements greater than h_i, and increase number of blocks
			while (stack.length > 0 && h_i < stack.max)
				stack.shift()
				stones_count  = stones_count + 1
			end
		end
		if(stack.max != h_i)
		  stack.unshift(h_i)
		end
		max_wall_height = h_i
	end

	stones_count = stones_count + stack.length

	stones_count
end
