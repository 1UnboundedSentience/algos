# [1,2,3,4].each { |x| x^2 }
# # [1,4,9,16]

# a = [1,2,3]

# a.join

# I:an array
# O: an integer representing an elemtn of the input array that is duplicated

# N=3, your list might be 3, 1, 1, 3    # O: 3 or 1

# 1. Create a hash which keeps track of the frequency of each element in the array,
# the key representing the frequency.  # hash = Hash.new(0) {"a" => 0}
# 2. Iterate over the entire input with the each method
# 3. update the hash with the current element, adding 1 to denote that it has appeared
# 4. Check if the key in the hash has value 2, if so it is a repeat, so return it
# 5. If you iterate over the entire thing and there is no repeats, then return -1

require 'pry'

def find_duplicates(array)
  freq_hash = Hash.new(0)
  array.each do |elem|
    freq_hash[elem] += 1 # array[elem] = array[elem] + 1
    if freq_hash[elem] == 2  # 2 == 2  => true
      binding.pry
      return elem
    end
  end
  return -1
end

print find_duplicates([3,1,1,3]) # {1 = 1 , }  # 2n -- n

# n log n    n ^2