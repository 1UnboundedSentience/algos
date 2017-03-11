=begin
print out in order traversal of tree
» Traverse left node, current node, then right [usually used for binary search trees]


          50
      40       60
  10    45  nil   70
nilnil nilnil    nilnil

algo: left, itself, then right
output: 10, 40, 45, 50, 60, 70

10
45
40
70
60
50

      40
  nil    nil

Postorder traversal: To traverse a binary tree in Postorder, following operations are carried-out (i) Traverse all the left external nodes starting with the left most subtree which is then followed by bubble-up all the internal nodes, (ii) Traverse the right subtree starting at the left external node which is then followed by bubble-up all the internal nodes, and (iii) Visit the root.

http://1.bp.blogspot.com/_nx3c2uD12Vc/SZ3AhJV9rXI/AAAAAAAAA3A/wIL6sHpVbEE/s1600-h/PreorderInorderPostorder-BinaryTree.gif
http://datastructuresnotes.blogspot.com/2009/02/binary-tree-traversal-preorder-inorder.html

0, 2, 4, 6, 5, 3, 1, 8, 10, 9, 7
=end

class Node

  # attr_accessor :left, :right, :value
  # def initialize(value)
  #   @value = value
  # end
  # def preorder_traverse
  #   p self.value
  #   @left.preorder_traverse() if @left
  #   @right.preorder_traverse() if @right
  # end
  # def inorder_traverse
  #   if @left != nil
  #     @left.inorder_traverse()
  #   end
  #   p self.value
  #   if @right != nil
  #     @right.inorder_traverse()
  #   end
  # end
  # def postorder_traverse
  #   @left.postorder_traverse() if @left
  #   @right.postorder_traverse() if @right
  #   p @value
  # end
end

# root = Node.new(50)
# root.left = Node.new(40)
# root.right = Node.new(60)
# went_left = root.left
# went_left.left = Node.new(10)
# went_left.right = Node.new(45)
# went_right = root.right
# went_right.right = Node.new(70)


# root.postorder_traverse()

# clone a graph

# var value
# @edges = [<Node id:2342389, value='silas'>, <Node id:23212389, value='silas'>]

#given a graph, output: a clone graph with the same content and vertices

# jason - silas - bob - jason
# jason2 silas2   bob2   jason2

#
# is_visited?

class Node
  attr_accessor :edges, :value
  def initialize

  end

  def clone(orig_head, is_visited={}, clonehead=Node.new())
    if @edges.length == 0
      return #clone
    else
      orig_head_copy = clonehead if !clonehead.value
      clonehead.value = self.value
      is_visited[a_node] = true
      @edges.each do |a_node|

        @vertices << a_node
        if is_visited[a_node]
          clone(is_visited, a_node)
        end
      end
      return orig_head_copy
    end
  end

end


#   update the is_visited hash
# iterate over each of the current node's edges |a_node|
#   append the edge to the list of vertices for the current node
#   make a recursive call to that a_node IF it is not in the is_visited hash


