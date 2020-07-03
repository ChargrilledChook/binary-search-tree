# frozen_string_literal: true

# Represents a binary search tree. Node class implements individual data
class Tree
  attr_accessor :root
  attr_reader :input

  def initialize(input)
    @root = build_tree(input)
  end

  # Constructs a BST and returns the root node
  def build_tree(array)
    root = Node.new(array[0])
    array.uniq[1..-1].each { |value| insert(value, root) }
    root
  end

  def insert(value, node = root)
    node = node_placer(value, node) until node_placer(value, node) == true
  end

  def delete(value)
    # TODO
  end

  def find(value)
    # TODO
  end

  def level_order(block)
    # TODO
  end

  def in_order(block)
    # TODO
  end

  def pre_order(block)
    # TODO
  end

  def post_order(block)
    # TODO
  end

  def depth(node)
    # TODO
  end

  def balanced?
    # TODO
  end

  def rebalance!
    # TODO
  end

  # Bonus - define_method / metaprogramming

  # This function taken from Odin Discord. Tool to help visualize tree
  def pretty_print(node = root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end

  private

  # Called by insert
  # Returns true if node is placed successfully, else returns the next node
  def node_placer(value, node)
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

  def traverse_tree(value, node)
    if value < node.data
      node.left
    else
      node.right
    end
  end

end

 # TODO
    # Case 1 - No children
    node = traverse_tree(value, node) until traverse_tree(value, node).nil? || node.left.data == value || node.right.data == value
    if node_left?(value, node)
      node.left = nil
    else
      node.right = nil
    end
    # Case 2 - 1 child
    # Case 3 - 2 children