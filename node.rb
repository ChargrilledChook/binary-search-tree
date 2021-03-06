# frozen_string_literal: true

# TODO: add comparable module to compare nodes using data attribute

# Represents a single node in a binary search tree
class Node
  include Comparable

  attr_accessor :left, :right, :data

  def <=>(other)
    data <=> other.data
  end

  # Data takes a value, left and right are pointers to other node objects
  def initialize(data, left = nil, right = nil)
    @data = data
    @left = left
    @right = right
  end
end
