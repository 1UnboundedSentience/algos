def find_repeat(array)
  p array
  return n if array.length == 1
  n = (array.length-1)/2
  count = 0
  array.each {|num|
    count += 1 if num < n
  }
  p count
  find_repeat([*1..n/2]) if count > n
  find_repeat([*n/2..n]) if count < n
end

p find_repeat([1,3,2,4,1])