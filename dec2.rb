class Node
  attr_accessor :node, :next

  def self.last(node)
    return node if node.next.nil?
    node = last node.next
  end

  def self.delete(node)
    #find the previous node, then swap the pointer to the next next node
    prev = Node.last
  end

  def self.reverse(node)
    return node if node.next.nil?

    head, swap, node.next = node.next, node, nil
    link = head.next

    while link != nil
      head.next = swap
      swap = head
      head = link
      link = link.next
    end

    head.next = swap
    head
  end

  def self.node_list(node, msg = nil)
    msg ||= ""
    return msg[0..-4] if node.nil?
    node_list(node.next, msg << "#{node.node} -> ")
  end

  def initialize(node)
    @node = node
  end
end

node = Node.new(1)
1.upto(99) do |i|
  eval("Node.last(node).next = Node.new(i + 1)")
end

puts Node.node_list node
puts Node.node_list Node.reverse(node)