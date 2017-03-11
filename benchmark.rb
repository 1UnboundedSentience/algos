require 'benchmark'

puts Benchmark.measure { "a"*1_000_000 }


puts Benchmark.measure {
  def fibonacci(n)
    print n.to_s + " "
    if n<2
      return n
    else
      return fibonacci(n-1) + fibonacci(n-2)
    end
  end
  p fibonacci(20)
}