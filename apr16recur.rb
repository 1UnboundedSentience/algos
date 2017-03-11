class BinarySearchTree
  attr_accessor :root
  def initialize
    @root = nil
  end

  def insert(value)
    if @root == nil
      @root = BSTNode.new(value)
    else
      add(@root, value)
    end
  end

  def exists?(value)
    if @root == nil
      return false
    else
      binary_search(@root, value)
    end
  end

  private

  def add(node, value)
    if value < node.value
      if node.left_child == nil
        node.left_child = BSTNode.new(value)
      else
        add(node.left_child, value)
      end
    else
      if node.right_child == nil
        node.right_child = BSTNode.new(value)
      else
        add(node.right_child, value)
      end
    end
  end

  def binary_search(node, value)
    if node == nil
      return false
    elsif value == node.value
      return true
    elsif value < node.value
      binary_search(node.left_child, value)
    elsif value > node.value
      binary_search(node.right_child, value)
    end
  end

end

def preorder(head)
  if head.left
    p head
    preorder(head.left)
  elsif head.right
    p head
    preorder(head.right)
  else
    p head
    preorder(head.parent)
  end
end

tree = BinarySearchTree.new(1)
tree.left =