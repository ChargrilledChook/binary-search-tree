# frozen_string_literal: true

require_relative 'node'
require_relative 'tree'

_random_arr = Array.new(15) { rand(1..100) }
_static_arr = [5, 4, 3, 6, 2, 1, 7, 8, 9]
static_arr2 = [7, 4, 23, 8, 9, 4, 3, 5, 7, 1, 9, 67, 6345, 324]

tree = Tree.new(static_arr2)

tree.to_s

tree.insert(500)
puts '------------'
tree.to_s
tree.insert(500)
tree.insert(501)
tree.to_s
tree.delete(500)
tree.to_s

pp "Level order =>  #{tree.level_order}"
