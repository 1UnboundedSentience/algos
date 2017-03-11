# p

# get all three: p^3
# get only first two: (p^2 * (1-p))
# get only first and third: (p^2 * (1-p))
# get only first and third: (p^2 * (1-p))
# 3*p^2 * (1-p) > p
# 3p^2 - 3p^3 > p
# 3p - 3p^2 > 1
# 0 > 3p^2 - 3p + 1
# p^3 + 3*p^2 + -3p + 3 > p
# p^3 + 3*p^2 + -4p + 3 > 0
# f(p) = p^3 + 3*p^2 + -4p + 3

# [0, 5, 6]
# f(i) f(0)=0, f(1)=5, f(2)=6
# [ [],
# [],
# []]
# M[1][]

require 'pry'

def set_zero(xcoord, ycoord, matrix)
  0.upto(matrix[0].length-1) do |x_idx|
    matrix[ycoord][x_idx] = 0
  end
  0.upto(matrix.length-1) do |y_idx|
    matrix[y_idx][xcoord] = 0
  end
end

def zero_out(matrix)
  real_zero_coords = []
  0.upto(matrix[0].length-1) do |y_idx|
    0.upto(matrix.length-1) do |x_idx|
      #binding.pry
      #p "#{x_idx}     #{y_idx}"
      if matrix[x_idx][y_idx] == 0
        real_zero_coords << [x_idx, y_idx]
      end
    end
  end
  p real_zero_coords
  real_zero_coords.each do |tuple|
    set_zero(tuple[1], tuple[0], matrix)
  end
  return matrix
end

somematrix =
[
  [0,1,2,3,4,5,6,7,8],
  [1,1,1,1,1,1,1,1,1],
  [2,1,1,1,1,1,1,1,1],
  [3,1,1,1,1,1,1,1,1],
  [4,1,1,0,1,1,1,1,1],
  [5,1,1,1,1,1,1,1,1],
  [6,1,1,1,1,1,1,1,1],
  [7,1,1,1,1,1,1,0,1]
]
p zero_out(somematrix)