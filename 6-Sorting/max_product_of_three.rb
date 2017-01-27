# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  a = a.sort()

  product_last_elements = a[a.length-1] * a[a.length-2] * a[a.length-3]
  product_in_case_negative = a[a.length-1] * a[0] * a[1]

  product = [product_last_elements, product_in_case_negative].max


  product
end
