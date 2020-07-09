require_relative 'node'
require_relative 'tree'

tree = Tree.new(Array.new(15) { rand(1..100) })
puts tree.balanced?
print tree.level_order
print tree.pre_order
print tree.in_order
print tree.post_order
10.times.tree.insert(rand(101..200))
puts tree.balanced?
tree.rebalance!
puts tree.balanced?
print tree.level_order
print tree.pre_order
print tree.in_order
print tree.post_order
