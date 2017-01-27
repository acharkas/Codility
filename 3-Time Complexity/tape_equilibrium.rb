def solution(a)
  sum_1 = 0
  sum_2 = 0
  min_diff = 1000000
  diff = 0

  a.each do |a_i|
    sum_2 = sum_2 + a_i
  end

  (1..a.length-1).each do |i|

    sum_1 = sum_1 + a[i-1].to_i
    sum_2 = sum_2 - a[i-1].to_i

    diff = (sum_2 - sum_1).abs

    if(min_diff > diff)
      min_diff = diff
    end
  end

  min_diff
end
