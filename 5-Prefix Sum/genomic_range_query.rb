# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s, p, q)

  stats_a = []
  stats_c = []
  stats_g = []

  minimals = []

  stats_a[0] = 0
  stats_c[0] = 0
  stats_g[0] = 0
  (1..(s.length)).each do |i|
    stats_a[i] = stats_a[i-1]
    stats_c[i] = stats_c[i-1]
    stats_g[i] = stats_g[i-1]

    if(s[i-1] == "A")
      stats_a[i] = stats_a[i] + 1
    elsif(s[i-1] == "C")
      stats_c[i] = stats_c[i] + 1
    elsif(s[i-1] == "G")
      stats_g[i] = stats_g[i] + 1
    end
  end

  (0..(p.length-1)).each do |j|
    start_index = p[j]
    end_index = q[j] + 1

    if(stats_a[end_index] - stats_a[start_index] > 0)
      minimals[j] = 1
    elsif(stats_c[end_index] - stats_c[start_index] > 0)
      minimals[j] = 2
    elsif(stats_g[end_index] - stats_g[start_index] > 0)
      minimals[j] = 3
    else
      minimals[j] = 4
    end
  end
  minimals
end
