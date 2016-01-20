#!/usr/bin/env ruby
#
# example_basic.rb:: Basic usage of the tree library.
#
# Author:  Anupam Sengupta
# Time-stamp: <2013-12-28 12:14:20 anupam>
# Copyright (C) 2013 Anupam Sengupta <anupamsg@gmail.com>
#
# The following example implements this tree structure:
#
#                    +------------+
#                    |    ROOT    |
#                    +-----+------+
#            +-------------+------------+
#            |                          |
#    +-------+-------+          +-------+-------+
#    |  CHILD 1      |          |  CHILD 2      |
#    +-------+-------+          +---------------+
#            |
#            |
#    +-------+-------+
#    | GRANDCHILD 1  |
#    +---------------+

# ..... Example starts.
require 'tree'                 # Load the library
require 'pry'
# ..... Create the root node first.
# ..... Note that every node has a name and an optional content payload.
root_node = Tree::TreeNode.new("ROOT", "Root Content")
#root_node.print_tree

# ..... Now insert the child nodes.
#       Note that you can "chain" the child insertions to any depth.
root_node << Tree::TreeNode.new("CHILD1", "Child1 Content")

#<< Tree::TreeNode.new("GRANDCHILD1", "GrandChild1 Content") << Tree::TreeNode.new("GRANDGRANDCHILD1", "GrandGrandChild1 Content")

#<< Tree::TreeNode.new("GRANDx3CHILD1", "Grandx3Child1 Content") << Tree::TreeNode.new("GRANDx4CHILD1", "Grandx4Child1 Content") << Tree::TreeNode.new("GRANDx5CHILD1", "Grandx5Child1 Content") << Tree::TreeNode.new("GRANDx6CHILD1", "Grandx6Child1 Content")
root_node << Tree::TreeNode.new("CHILD2", "Child2 Content")

# ..... Lets print the representation to stdout.
# ..... This is primarily used for debugging purposes.
root_node.print_tree

# ..... Lets directly access children and grandchildren of the root.
# ..... The can be "chained" for a given path to any depth.
child1       = root_node["CHILD1"]
grand_child1 = root_node["CHILD1"]["GRANDCHILD1"]

# ..... Now retrieve siblings of the current node as an array.
siblings_of_child1 = child1.siblings

# ..... Retrieve immediate children of the root node as an array.
children_of_root = root_node.children

# ..... Retrieve the parent of a node.
parent = child1.parent

# ..... This is a depth-first and L-to-R pre-ordered traversal.
root_node.each { |node| node.content.reverse }

# ..... Remove a child node from the root node.
#binding.pry

# .... Many more methods are available. Check out the documentation!
# class MyTree
#   attr_accessor :left, :right, :value

#   def initialize(value)
#     @value = value
#     @nodes = []
#   end
# end

# t = MyTree.new(1)
# t.left << MyTree.new(2)
# t.right << MyTree.new(5)

# p t.value              # 1
# p t.left.value  # 3
# p t.right.value  # 11

class Depth
  def initialize(tree_obj)
    @tree_obj = tree_obj
    @ultimate_max = 0
  end

  def max_depth(head, current_max=0)
    if head.children[0] == nil && head.children[1] == nil
      return @ultimate_max
    else
      current_max += 1
      if current_max > @ultimate_max
        @ultimate_max = current_max
      end
      max_depth(head.children[0], current_max) if head.children[0]
      max_depth(head.children[1], current_max) if head.children[1]
    end
  end

end

sample = Depth.new(root_node)
p sample.max_depth(root_node)