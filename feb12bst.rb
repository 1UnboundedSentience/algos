class BinarySearchTree
  attr_reader :size
  def initialize(root, size)
    @root = root
    #@size = size
  end

  def insert(val)
    if @size == 0
      @root = Node.new(val)
      @size += 1
    else
      work = @root
      def traverse(cur_node)
        if val>cur_node.val
          if cur_node.right == null
            cur_node.right = Node.new(val)
          else
            traverse(cur_node.right)
          end
        end
      end
    end
  end
end

tree1 = BinarySearchTree.new(15, 1)