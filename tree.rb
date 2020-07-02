# frozen_string_literal: true

# Represents a binary search tree. Node class implements individual data
class Tree
  attr_accessor :root
  attr_reader :input

  def initialize(input)
    @root = build_tree(input)
  end


  # If first value, create root node
  # Else compare value
  # If smaller check left , >= check right
  # If checked field is nil, field = node
  # Else repeat on next node

  # Constructs a BST and returns the root node
  def build_tree(array)
    root = Node.new(array[0])
    array[1..-1].each do |element|
      temp_root = root
      placed = false
      until placed == true
        if element < temp_root.data
          if temp_root.left.nil?
            temp_root.left = Node.new(element)
            placed = true
          else
            temp_root = temp_root.left
          end
        else
          if temp_root.right.nil?
            temp_root.right = Node.new(element)
            placed = true
          else
            temp_root = temp_root.right
          end
        end
      end
    end
    root
  end

  def insert(value)
    # TODO
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
  def pretty_print(node = root, prefix="", is_left = true) 
    pretty_print(node.right, "#{prefix}#{is_left ? "│ " : " "}", false) if node.right 
    puts "#{prefix}#{is_left ? "└── " : "┌── "}#{node.data.to_s}" 
    pretty_print(node.left, "#{prefix}#{is_left ? " " : "│ "}", true) if node.left 
  end

  private

  def node_checker(node, side, element)
    if node.side.nil?
      node.side = Node.new(element)
    else
      side_picker(node)
    end
  end

  def side_picker(node)

  end
end
