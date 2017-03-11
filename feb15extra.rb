class Node
  attr_accessor :left, :right, :value

  def initialize(value)
    @value = value
    @left = []
    @right = []
  end

end

tree1 = Node.new("a")
tree1.left << Node.new("b")
tree1.right << Node.new("c")

#to_left = tree1.left
#to_left.left << Node.new("d")

def max_depth(node, cur_depth=0, max_depth=0)
  if node.left==nil && node.right==nil
    return max_depth
  else
    max_depth = cur_depth if cur_depth > max_depth
    max_depth(node.left, cur_depth+1, max_depth) if node.left
    max_depth(node.right, cur_depth+1, max_depth) if node.right
  end
end

p max_depth(tree1)