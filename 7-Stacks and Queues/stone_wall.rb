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
	(0..(h.length-1)).each do |i|
	 # puts "h[i] #{h[i]}"
		if(stack.length == 0)
			stack.unshift(h[i])
			max_wall_height = h[i]

		# 	puts "h[i] #{h[i]} : max_wall_height #{max_wall_height} stones_count #{stones_count}"
		elsif stack.length > 0 && max_wall_height == h[i]
			next
		elsif stack.length > 0 && max_wall_height > h[i]
			# pop all elements greater than h[i], and increase number of blocks
			while (stack.length > 0 && h[i] < stack.max)
				stack.shift()
				stones_count  = stones_count + 1
				# puts "h[i] #{h[i]} while : max_wall_height #{max_wall_height} stones_count #{stones_count}"
			end

			if(stack.length == 0 || stack.max < h[i])
				stack.unshift(h[i])
			end
			max_wall_height = stack.max
		# 	puts "h[i] #{h[i]} : max_wall_height #{max_wall_height} stones_count #{stones_count}"
		elsif stack.length > 0 && max_wall_height < h[i]
			# increase the peak
			stack.unshift(h[i])
			max_wall_height = stack.max
		# 	puts "h[i] #{h[i]} peak: max_wall_height #{max_wall_height} stones_count #{stones_count}"
		end
	end

	stones_count = stones_count + stack.length

	stones_count
end
