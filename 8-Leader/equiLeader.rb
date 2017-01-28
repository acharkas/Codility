# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  size = 0
  value = -1
  (0..(a.length-1)).each do |i|
    if(size == 0)
      size = 1
      value = a[i]
    else
      if(value != a[i])
        size = size - 1
      else
        size = size + 1
      end
    end
  end

  candidate = -1
  leader = -1
  count = 0
  leader_indices = []

  if(size > 0)
    candidate = value
  end

  (0..(a.length-1)).each do |i|
    if a[i] == candidate
      count = count + 1
    end
    leader_indices << count
  end

  if count > (a.length/2)
    leader = candidate
  end

  leaders_count = 0

  if(leader != -1)
    (0..(a.length-1)).each do |i|
      a_1 = a[0..i]
      a_2 = a[(i+1)..(a.length-1)]

      count_2 = leader_indices[i]

      # puts "count_2 #{count_2} , count #{a_1.length/2}"
      # puts "count_2 #{count_2} , (count-count_2) #{(count-count_2)}, count #{(a_2.length/2)}"

      if count_2 > (a_1.length/2) && (count-count_2) > (a_2.length/2)
        leaders_count  = leaders_count + 1
      end

      # puts leaders_count
      # puts
    end
  end

  leaders_count
end
