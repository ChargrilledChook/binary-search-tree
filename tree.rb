# frozen_string_literal: true
require 'pry'

# Implements a binary search tree
class Tree
  attr_accessor :root
  attr_reader :input

  def initialize(input)
    @root = build_tree(input)
  end

  # Constructs a BST and returns the root node
  def build_tree(array)
    input = array.sort.uniq
    input = binary_balance(input)
    root = Node.new(input.first)
    input[1..-1].each { |value| base_insert(value, root) }
    root
  end

  # Split because inserting into a new tree needs a slightly different implementation
  # See base insert for implementation details
  def insert(value)
    return if find(value)

    base_insert(value)
  end

  # TODO: should be able to delete direct children of root
  def delete(value, node = root)
    # Covers edge case of deleting root node
    if node.data == value
      self.root = nil
      exit
    end
    return unless find(value)

    found = false
    until found == true
      node = traverse_tree(value, node)
      found = node_left?(value, node) ? check_node?(value, node.left) : check_node?(value, node.right)
    end
    delete_node = find(value)
    children = count_children(delete_node)
    case children
    # Case 1 - No children (leaf node)
    when 0
      node_left?(value, node) ? node.left = nil : node.right = nil
      # Case 2 - 1 child
    when 1
      if delete_node.left
        new_child = delete_node.left
      else
        new_child = delete_node.right
      end
      node.left.data == value ? node.left = new_child : node.right = new_child
    else
      # Case 3 - 2 children
      replacement_node = find_successor(delete_node.right)
      temp = replacement_node.data
      delete(replacement_node.data)
      delete_node.data = temp
    end
  end

  # Returns node object if value is found, else returns nil
  def find(value, node = root)
    node = traverse_tree(value, node) until traverse_tree(value, node).nil? || node.data == value
    node.data == value ? node : nil
  end

  # Queue collects node objects, result collects their data
  def level_order
    queue = [root]
    result = []
    until queue.empty?
      result << queue.first.data
      queue << queue.first.left if queue.first.left
      queue << queue.first.right if queue.first.right
      queue.shift
    end
    result
  end

  def in_order(node = root, result = [])
    in_order(node.left, result) if node.left
    result << node.data
    in_order(node.right, result) if node.right
    result
  end

  def pre_order(node = root, result = [])
    result << node.data
    pre_order(node.left, result) if node.left
    pre_order(node.right, result) if node.right
    result
  end

  def post_order(node = root, result = [])
    post_order(node.left, result) if node.left
    post_order(node.right, result) if node.right
    result << node.data
  end

  def depth(node = root)
    if node
      left_height = depth(node.left)
      right_height = depth(node.right)
      left_height > right_height ? left_height + 1 : right_height + 1
    else
      -1
    end
  end

  def balanced?(node = root)
    left = depth(node.left)
    right = depth(node.right)
    (left - right) > -2 && (left - right) < 2
  end

  def rebalance!
    arr = in_order
    self.root = build_tree(arr)
  end

  # See private methods for details
  def to_s
    pretty_print
  end

  # Bonus - define_method / metaprogramming

  private

  def base_insert(value, node = root)
    node = traverse_tree(value, node) until traverse_tree(value, node).nil?
    if node_left?(value, node)
      node.left = Node.new(value)
    else
      node.right = Node.new(value)
    end
  end

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
    counter += 1 if node.left
    counter += 1 if node.right
    counter
  end

  # Recursively creates an array that will lead to a balanced BST
  def binary_balance(array, result = [])
    middle = (array.size / 2)
    result << array[middle]
    left = array.slice(0...middle)
    binary_balance(left, result) unless left.size < 1
    right = array.slice((middle + 1 )..-1)
    binary_balance(right, result) unless right.size < 1
    result
  end

  # Arg should be right child of node to be deleted
  def find_successor(node)
    node = node.left while node.left
    node
  end

end
