require 'benchmark'

def fib3(n)
  (1..n).reduce([0, 1]) { |pair|
    [pair[1], pair[0] + pair[1]]
    }[0]
end

p fib3(40)

def fib(n, dict={})
  if n <= 1
    return n
  else
    return dict[n] if dict[n]
    dict[n] = fib(n-1, dict) + fib(n-2, dict)
    return dict[n]
  end
end

def fib_bad_way(n)
  if n<=1
    return n
  else
    return fib_bad_way(n-1) + fib_bad_way(n-2)
  end
end

# p Benchmark.measure { fib(37) }
# p Benchmark.measure { fib_bad_way(37) }

def nav_grid(top_coord, bottom_coord, counter=0)
  p "#{top_coord} #{bottom_coord} #{counter}"
  if #out of bounds or blocked
    return 1
  elsif top_coord == bottom_coord
    return 0
  else
    top_coord[0] += 1
    top_coord[1] -= 1
    nav_grid(top_coord, bottom_coord, counter)
    return counter
  end
end
# count as 0 if blocked or out of bounds
p nav_grid([0,0], [5,5])
# only can move right and down, find num of distinct paths
# parts of grid blocked off