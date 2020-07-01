# frozen_string_literal: true

# TODO: add comparable module to compare nodes using data attribute

# Represents a single node in a binary search tree
class Node
  attr_accessor :left, :right, :data

  def initialize
    @left = nil
    @right = nil
    @data = nil
  end
end
