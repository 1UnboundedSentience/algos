def in_rectangle?(upperLeftX, upperLeftY, width, height, px, py)
  if (px > upperLeftX && py > upperLeftY &&
      px < (upperLeftX+w) && py < (upperLeftY - height)
    )
    return true
  else
    return false
  end
end

def in_circle?(centerX, centerY, radius, px, py) # distance from circle must be less than the radius
  # x and y distances yield
  if (px - centerX)**2 + (py - centerY)**2 <= radius**2
    return true
  else
    return false
  end
end

# decrement one thing as we go to midpoint

#rowLeft
#n*2 -1 rows printed

def draw_pattern(n)
  if n < 1
    return
  end
  w = 2 * n - 1
  h = 2 * n - 1
  current_row = 0
  current_column = 0
  output = n
  minimum = n # tracks n as it goes to midpoint
  while current_row < h
    current_column = 0
    output = n
    while current_column < w
      print output
      if current_column < n && output > minimum
        output -= 1
      elsif current_column > n && output < n
        output += 1
      end
      current_column += 1
    end
    if current_row < n
        minimum -= 1
    elsif current_row > n - 1
        minimum += 1
    end
    current_row += 1
    puts " current_column: #{current_column} minimum+1: #{minimum+1}" #line break
  end
end

p draw_pattern(4)


# assuming the origin is a normal catesian coordinate system with 0,0 at the center of the graph