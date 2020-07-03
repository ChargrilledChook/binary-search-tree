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
        node = node_placer(node, value) until node_placer(node, value).nil?
        node = Node.new(value)
        node
    end
  
    def delete(value)
      node = node_placer(node, value) until node_placer(node, value) == true
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
      if value < node.data
       node.left
      else
        node.right
      end
    end
end
  

def node_left?(value, node)
   value < node.data
end

def node_placer(value, node)
  if node_left?(value, node)
    if node.left.nil?
      node.left = Node.new(value)
      true
    else
      node = node.left
      node
    end
  else
    if node.right.nil?
      node.right = Node.new(value)
      true
    else
      node = node.right
      node
    end
  end
end

def node_left?(value, node)
  value < node.data
end

def node_placer_test(value, node)
  if node_left?(value, node) && !node.left.nil?
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