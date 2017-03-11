class Node
  attr_accessor :value
  def initialize(root_node)
    @associations = {}
    @root_node = root_node
    @associations = {"value" => root_node }
    @current = @associations.key(root_node)

  end

  def value
    @current
  end

  def left_node=(input)
    @associations[@current] = input
    @current = @associations["Left Node"]
  end

  def right_node=(input)
    @associations["Right Node"] = input
    @current = @associations["Right Node"]
  end


end

tree1 = Node.new(5)
p tree1
p tree1.value
p tree1
tree1.left_node = 9
p tree1