def solution(a)
  # write your code in Ruby 2.2
  count_east = 0 # count of cars
  pairs_count = 0

  a.each do |a_i|
    if a_i == 0
      count_east = count_east + 1 # count of east cars
    else # whenever a west car shows up it will be added to all east cars
      pairs_count = pairs_count + count_east
    end
  end

  pairs_count = (pairs_count > 1000000000)? -1 : pairs_count

  pairs_count
end
