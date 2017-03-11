def img_rotation(two_d_matrix)
  new_matrix = []
  two_d_matrix.each_with_index do |row, row_idx|
    #p row
    new_matrix[row_idx] = []
    row.each_index {|cell_idx|
      p "#{row_idx} #{cell_idx}"
      new_matrix[row_idx][cell_idx] = two_d_matrix[cell_idx][row_idx]

      #new_matrix[0][0] = two_d_matrix[row_idx][cell_idx]
    }
    # row.each_with_index do |cell, cell_idx|
    #   new_matrix[cell_idx][row_idx] = two_d_matrix[row_idx][cell_idx]
    # end
  end
  return new_matrix
end

def img_rotation_inplace(two_d_matrix)
  new_matrix = []
  two_d_matrix.each_with_index do |row, row_idx|
    #p row
    two_d_matrix[row_idx] = []
    row.each_index {|cell_idx|
      p "#{row_idx} #{cell_idx}"
      two_d_matrix[row_idx][cell_idx], two_d_matrix[cell_idx][row_idx] =
      two_d_matrix[cell_idx][row_idx], two_d_matrix[row_idx][cell_idx]
    }
  end
  return two_d_matrix
end


sample_matrix = [
  [2, 3, 4, 5, 1],
  [0, 0, 0, 0, 1],
  [0, 0, 0, 0, 1],
  [0, 0, 0, 0, 1],
  [0, 0, 0, 0, 1]
]

#p img_rotation_inplace(sample_matrix)

=begin

x becomes y and y becomes x

=end

def flatten two_d_array, new_array=[]
  two_d_array.each {|thing|
    if thing.is_a? Array
      flatten(thing, new_array)
    else
      new_array << thing
    end
  }
  return new_array
end

p flatten([[1,2, [1,3, [4,1]]], [3,1], [5], [6,7,8]])