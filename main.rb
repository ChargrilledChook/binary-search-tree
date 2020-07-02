# frozen_string_literal: true

require_relative 'node'
require_relative 'tree'

test_arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
test_arr2 = [2, 1, 3]
test_arr3 = [3, 2, 7, 1, 5, 4, 6]
tree = Tree.new(test_arr3)

tree.pretty_print

tree2 = Tree.new(test_arr)

puts '----------'

tree2.pretty_print
