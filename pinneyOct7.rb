def get_mode array
  hash = Hash.new(0)
  max = 0
  array.each {|n|
    hash[n] += 1
  }
  max = 0
  hash.each {|k,v|
    max = v if v > max
  }
  return max
end

# p get_mode([9,9,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,3,3,4,4,4,4,5])

def sort nums
  hash = Hash.new(0)
  sorted_arr = []
  nums.each {|n|
    hash[n] += 1
  }
  1000.times {|n|
    count = hash[n]
    p n
    count.times {sorted_arr << n}
  }
  return sorted_arr
end

p sort([1,2,3,45,5,5,7,64,3,1])

def word_rotate str1, str2

end

def is_substring str1, str2
  str1.each {|char| }
  return true if
end