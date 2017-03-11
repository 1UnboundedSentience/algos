require 'pry'
class LandWater
  def initialize(lwarray)
    @lwarray = lwarray
    @array = []
  end

  def find_coords
    @lwarray.each_with_index do |row, y_val|
      row.each_with_index do |cell, x_val|
        @array << [y_val, x_val] if @lwarray[y_val][x_val] == "t"
      end
    end
    # @array.each_with_index do |coords, idx|
    #   if adj(@array[idx], @array[idx+1])
    #     couplet = [@array[idx], @array[idx+1]]
    #     @array.delete_at(idx)
    #     @array.delete_at(idx+1)
    #     @array.insert(idx, couplet)
    #   end
    end
    return @array
  end

  def groupem(@array)
    return false
  end

  def mashem

  end
end

sample = LandWater.new([["t", "f", "t"],
                        ["t", "t", "f"],
                        ["f", "f", "f"]])

p sample.find_coords

#grouping - if check for