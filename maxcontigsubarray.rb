require 'hamster'
require 'pry'

Hamster::Deque.new([:first, :second, :third])
Hamster::Deque[1, 2, 3, 4, 5]
#Or you can start with an empty deque and build it up:

Hamster::Deque.empty.push('b').push('c').unshift('a')
#Like all Hamster collections, Deque is immutable. The four basic operations that "modify" deques (#push, #pop, #shift, and #unshift) all return a new collection and leave the existing one unchanged.

#Examples:

#p deque = Hamster::Deque.empty                 # => Hamster::Deque[]
#p deque = deque.push('a').push('b').push('c')  # => Hamster::Deque['a', 'b', 'c']
#p deque.first                                  # => 'a'
#p deque.last                                   # => 'c'
#p deque = deque.shift                          # => Hamster::Deque['b', 'c']

def print_k_max(array, k)
  deque = Hamster::Deque.empty
  for i in [0..k]
    binding.pry
    while deque.empty() && arr[i]

    end
  end
end

array = [12, 1, 78, 90, 57, 89, 56]
k = 3

p print_k_max(array, k)