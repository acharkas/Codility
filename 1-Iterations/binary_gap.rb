# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  # write your code in Ruby 2.2

  found_first_one = false
  start_count = false
  current_count = 0
  max_count = 0

  # loop over n
  while (n != 0) do
    digit = n%2
    n = n/2

    if digit == 1
      # check maximum count if not first one appearing
      if(found_first_one == true && current_count > max_count)
        max_count = current_count
      end
      # reset counts to count again starting from it
      found_first_one = true
      start_count = true
      current_count = 0
    else # zeros
      current_count = current_count + 1
    end
  end

  max_count
end
