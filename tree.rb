# frozen_string_literal: true

# Represents a binary search tree. Node class implements individual data
class Tree
  attr_accessor :root

  def initialize(array)
    @root = build_tree(array)
  end

  def build_tree(array)
    # TODO
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
end
