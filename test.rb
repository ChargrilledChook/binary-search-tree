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

