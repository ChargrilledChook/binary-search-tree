# frozen_string_literal: true

require_relative 'node'
require_relative 'tree'

def side_picker(node, element)
  if element < node.data
    node.left
  else
    node.right
  end
end

def insert(value, node = root)
  node = node_placer(node, value) until node_placer(node, value).nil?
  node.data = value
end

def delete(value)
  node = node_placer(node, value) until node_placer(node, value) == true
end

def node_placer(node, element)
  if element < node.data
   node.left
  else
    node.right
  end
end

def node_placer(node, value)
  if value < node.data && node.left.nil?
    node.left = Node.new(value)
    true
  elsif value < node.data && !node.left.nil?
    node = node.left
    node
  elsif value >= node.data && node.right.nil?
    node.right = Node.new(value)
    true
  else
    node = node.right
    node
  end
end

def node_left?(value, node)
  value < node.data
end

def node_placer_test(value, node)
  if node_left?(value, node) && node.left.nil?
    node.left = Node.new(value)
    true
  elsif node_left?(value, node) && !node.left.nil?
    node = node.left
    node
  elsif !node_left?(value, node) && node.left.nil?
    node.right = Node.new(value)
    true
  else
    node = node.right
    node
  end
end