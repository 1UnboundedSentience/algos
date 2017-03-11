=begin

Find the most frequent integer in an array - integer array
Find pairs in an integer array whose sum is equal to 10 (bonus: do it in linear time)
Given 2 integer arrays, determine of the 2nd array is a rotated version of the 1st array. Ex. Original Array A={1,2,3,5,6,7,8} Rotated Array B={5,6,7,8,1,2,3}
Write fibbonaci iteratively and recursively (bonus: use dynamic programming)
Find the only element in an array that only occurs once.
Find the common elements of 2 int arrays
Implement binary search of a sorted array of integers
Implement binary search in a rotated array (ex. {5,6,7,8,1,2,3})
Use dynamic programming to find the first X prime numbers
Write a function that prints out the binary form of an int
Implement parseInt
Implement squareroot function
Implement an exponent function (bonus: now try in log(n) time)
Write a multiply function that multiples 2 integers without using *
HARD: Given a function rand5() that returns a random int between 0 and 5, implement rand7()
HARD: Given a 2D array of 1s and 0s, count the number of "islands of 1s" (e.g. groups of connecting 1s)
=end

def fib_recur(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return fib_recur(n-1) + fib_recur(n-2)
  end
end

p fib_recur(10)

def occuring_once(array)
    #iterate and double loop check == n^2 time
    has_repeats = false
    array.each_index {|i|
      array.each_index {|j|
        if array[i] != array[j]
          has_repeats = true
        end
      }
      if has_repeats == true
        return array[i]
      end
    }
end

p occuring_once([1,1,1,2,2,3,3,4,5,6,6,7])

def rotated_version?(arr1, arr2)
  # must be shift, shift at every pos and check?
  return false if arr1.length != arr2.length
  arr1.each_idx {|idx|
    return true if arr1[idx+1..-1] + arr1[0..idx] == arr2
  }
end

p rotated_version?([1,2,3,4,5],[3,4,5,1,2])

def find_pairs(int_array)
  pairs_summing_ten = []
  int_array.each_index {|idx|
    if int_array[idx] + int_array[idx+1] &&
      int_array[idx] + int_array[idx+1] == 10
      pairs_summing_ten << [int_array[idx], int_array[idx+1]]
    end
  }
  return pairs_summing_ten
end
p find_pairs([1,2,3,3,4,5,6,6,7])

def most_freq(array)
  max_count = 0
  count_hash = Hash.new(0)
  array.each_index {|i|
    count_hash[i] += 1
    max_count = count_hash[i] if count_hash[i] > max_count
  }
  return max_count
end

p most_freq([1,2,2,3,3,3,4])