# frozen_string_literal: true

require_relative 'node'
require_relative 'tree'

def build_tree(array)
  root = Node.new(array[0])
  array[1..-1].each do |element|
    node = root
    node = node_placer(node, element) until node_placer(node, element) == true
  end
  root
end

def node_placer(node, element)
  check = side_picker(node, element)
  if check.nil?
    check = Node.new(element)
    true
  else
    check
  end
end

def side_picker(node, element)
  if element < node.data
    node.left
  else
    node.right
  end
end

def node_checker(node, _side, element)
  if node.side.nil?
    node.side = Node.new(element)
  else
    side_picker(node)
  end
end
