# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)

  count = {}
  permutation = 1

  a.each do |a_i|
    if(count[a_i].nil?)
      count[a_i] = 0
    end
    count[a_i] = count[a_i] + 1
  end

  (1..a.length).each do |i|
    if count[i].nil?
      permutation = 0
      break
    end
  end

  permutation
end
