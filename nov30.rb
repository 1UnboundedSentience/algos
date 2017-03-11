def staircase(input)
    count = 1
    while count <= input
        print " " * (input - count)
        print "#" * count
        puts "" if count != input
        count += 1
    end
end
p staircase(6)

class Array
  def selectionsort!
    for i in 0..length-2
      min_idx = i
      for j in (i+1)...length
        min_idx = j  if self[j] < self[min_idx]
      end
      self[i], self[min_idx] = self[min_idx], self[i]
      p self
    end
    self
  end
end
ary = [7,6,5,9,8,4,3,1,2,0]
p ary.selectionsort!
# => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

def insertion_sort(unsorted_arr)
  unsorted_arr.each_index do |idx|
    unsorted_arr.each_index do |idx2|
      if unsorted_arr[idx2] < unsorted_arr[idx]
        unsorted_arr[idx2], unsorted_arr[idx]= unsorted_arr[idx], unsorted_arr[idx2]
      end
    end
  end
  return unsorted_arr
end

p insertion_sort([3,9,1,4,7])