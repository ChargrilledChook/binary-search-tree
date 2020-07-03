# frozen_string_literal: true

# Implements a binary search tree
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

  # TODO: Edge case - should not be able to insert duplicate value
  def insert(value, node = root)
    node = traverse_tree(value, node) until traverse_tree(value, node).nil?
    if node_left?(value, node)
      node.left = Node.new(value)
    else
      node.right = Node.new(value)
    end
  end

  def delete(value, node = root)
    # Case 1 - No children
    return nil if find(value).nil?

    found = false
    until found == true
      node = traverse_tree(value, node)
      found = node_left?(value, node) ? check_node?(value, node.left) : check_node?(value, node.right)
    end
    # children = count_children(node)
    node_left?(value, node) ? node.left = nil : node.right = nil

    # TODO: Case 2 - 1 child
    # TODO: Case 3 - 2 children
  end

  # Returns node object if value is found, else returns nil
  def find(value, node = root)
    node = traverse_tree(value, node) until traverse_tree(value, node).nil? || node.data == value
    node.data == value ? node : nil
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

  # See private methods for details
  def to_s
    pretty_print
  end

  # Bonus - define_method / metaprogramming

  private

  def traverse_tree(value, node)
    if node_left?(value, node)
      node.left
    else
      node.right
    end
  end

  def node_left?(value, node)
    value < node.data
  end

  # Credit to Fensus from Odin discord - prints a visual reprentation of tree in console
  def pretty_print(node = root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end

  def check_node?(value, node)
    node.data == value
  end

  def count_children(node)
    counter = 0
    counter += 1 unless node.left.nil?
    counter += 1 unless node.right.nil?
    counter
  end
end
