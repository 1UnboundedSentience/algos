 # /**********************************************************************
 #  *                          Homework VI                               *
 #  *                                                                    *
 #  *  Problem: Quicksort                                                *
 #  *                                                                    *
 #  *  Prompt: Given an unsorted array of numbers,                       *
 #  *          return a sorted array using Quicksort sort.               *
 #  *                                                                    *
 #  *  Input:  An unsorted array                                         *
 #  *  Output: A sorted array                                            *
 #  *                                                                    *
 #  *  Example: input = [3,9,1,4,7] , output = [1,3,4,7,9]               *
 #  *                                                                    *
 #  *  What are the time and auxilliary space complexity?                *
 #  *                                                                    *
 #  **********************************************************************/
=begin
variable pivot, place all elems that less than the pivot before the pivot, move pivot along array
    b. The elements less than pivot element are on the left of it
    c. The elements greater than pivot element are on the right
constant time insertion/deleteion with hashing function
=end

def quicksort(array)
  pivot_idx = array.length-1 #pivot is always the last elem
  #p array
  if array.length == 1
    return array
  else
    #p array
    0.upto(array.length-1) {|idx|
      if array[idx] < array[pivot_idx]
        array[idx], array[-1] = array[-1], array[idx]#swap
      elsif array[pivot_idx] > array[idx]
        array[idx], array[0] = array[0], array[idx]
      else
        array[idx], array[pivot_idx-1] = array[pivot_idx-1], array[idx]
      end
    }
    pivot_idx -= 1
    #another loop after pivot idx changes
    quicksort(array[0..(pivot_idx-1)])
    p array[(pivot_idx+1)..-1]
    #p array[-1]
    # if array[(pivot_idx+1)..-1]
    quicksort(array[(pivot_idx+1)..-1])
    # end
  end
end

p quicksort([3,9,1,4,7])