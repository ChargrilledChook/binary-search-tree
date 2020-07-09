# frozen_string_literal: true

require_relative 'node'
require_relative 'tree'

_random_arr = Array.new(15) { rand(1..100) }
_static_arr = [5, 4, 3, 6, 2, 1, 7, 8, 9]
static_arr2 = [7, 4, 23, 8, 9, 4, 3, 5, 7, 1, 9, 67, 6345, 324]
static_arr3 = [3, 2, 1, 7, 5, 4, 6]
static_arr4 = [1, 3, 2, 4, 5]
static_arr5 = [100, 200, 150, 300, 20, 10, 30]
tree = Tree.new(static_arr5)

tree.to_s

#tree.insert(500)
puts '------------'
tree.to_s
#tree.insert(500)
#tree.insert(499)

tree.to_s
tree.delete(500)
tree.to_s

pp "Level order =>  #{tree.level_order}"

print tree.in_order
puts
print tree.pre_order
puts
print tree.post_order
