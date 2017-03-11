# #go from left to right

# #if your not completely right, keep going right, add one to counter
# #if your not completely bottom, keep going bottom, add one counter
# #base case is x and y coords are same as board length and width
# #not distance but unique paths
# #each

# # def lattice_paths(board_size, counter=0, coords=[0,0])

# #   if board_size == 1
# #     return counter+2
# #   else
# #     if coords == [board_size, board_size]
# #       counter += 1
# #       coords = [0,0]
# #     end
# #     lattice_paths(board_size-1, counter)
# #   end
# # end

# # p lattice_paths(5)

# # def LP(x,y)
# #   if x==0 && y==0
# #     return 1
# #   elsif x<0 || y<0
# #     return 0
# #   end
# # end

# def merge_sort(array)
#   if array.length == 1
#     return array
#   else
#     p array
#     combine(array[0..(array.length-1)/2], array[array.length/2..array.length-1])
#   end
# end

# def combine(arr1, arr2)
#   pointer1 = 0
#   pointer2 = 0
#   answer = []
#   while arr1[pointer1] != nil && arr2[pointer2] != nil
#     p pointer1
#     p pointer2
#     if arr1[pointer1] > arr2[pointer2]
#       answer.push(arr1[pointer1])
#       pointer1 +=1
#     elsif arr1[pointer1] <= arr2[pointer2]
#       answer.push(arr2[pointer2])
#       pointer2 += 1
#     end
#   answer = answer + arr1 if arr2[pointer2] == nil
#   answer = answer + arr2 if arr1[pointer1] == nil
#   end
#   p "#{answer} is answer"
#   return answer
# end

# p merge_sort([3,1,99,2,55,3,44,10,7])

def flatten(arr, ans=[])
  p ans
  arr.each do |elem|
    if elem.is_a? Array
      flatten(elem)
    else
      ans.push(elem)
    end
  end
  return ans
end

p flatten([7,[5,[3]]])