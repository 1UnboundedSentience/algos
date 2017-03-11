=begin
  0       1     2
{"and", "but", "or"}
{"and", "but"}

power set - find all power sets
0..n iteration

n work times n, n&2 work
OACTCP - observe algo complexity test case cod eproof

=end

def power_set(array)
  subsets = []
  19.downto(10) {|n| p n}
  (array.length-1).times {|n|
    subsets << array[n]
  }
end



# #given binary ttree, compute sums along paths from root to leaves
# # BFS with var to add sums
# require 'pry'
# class Node
#   include Enumerable

#   attr_accessor :data, :left, :right
#   def initialize(data)
#     @data = data
#   end

#   def each(&block)
#     left.each(&block) if left
#     block.call(self)
#     right.each(&block) if right
#   end

#   def <=>(other_node)
#     data <=> other_node.data
#   end
# end

# root = Node.new(3)
# root.left = Node.new(2)
# root.right = Node.new(1)
# root.each {|x| puts x.data }

# def compute_sums(root, sum = sum || 0)
#   return 0 if root == nil
#   sum += root.data
#   #binding.pry
#   puts sum
#   return sum if root.left == nil && root.right == nil
#   return compute_sums(root.left, sum) +  compute_sums(root.right, sum)
# end

# p compute_sums(root, 0)

# # just a few of the various operations Enumerable provides
# #puts "SUM"
# #puts root.inject(0) { |memo, val| memo += val.data }
# #puts "MAXputs root.max.data