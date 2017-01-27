# We draw N discs on a plane. The discs are numbered from 0 to N − 1. A zero-indexed
# array A of N non-negative integers, specifying the radiuses of the discs, is given.
# The J-th disc is drawn with its center at (J, 0) and radius A[J].

# We say that the J-th disc and K-th disc intersect if J ≠ K and the J-th and K-th
# discs have at least one common point (assuming that the discs contain their
# borders).

def solution(a)
	count = 0
	open_disks = []
	closed_disks = []

	# count at each index how many disks are open and how many are closed
	(0..(a.length-1)).each do |i|
		# interested range will be from 0 -> n-1, so anything out of that range will
		# be adjusted
		lower = i - a[i]
		upper = i + a[i]

		if(lower < 0)
			lower = 0
		end

		if(upper > a.length-1)
			upper = a.length-1
		end

		open_disks[lower] = open_disks[lower] + 1
		closed_disks[upper] = closed_disks[upper] + 1
	end

	# loop over open and closed disks to find intersections
	open_disks_count = 0
	(0..(a.length-1)).each do |i|
		open_disks_count = open_disks_count + open_disks[i]
		while(closed_disks[i] > 0)
			count = count + open_disks_count - 1 # there is one closed disk so it is not counted
			open_disks_count = open_disks_count - 1
			closed_disks[i] = closed_disks[i] - 1
			if (count > 10000000)
                return -1;
            end
		end
	end
end

