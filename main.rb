require_relative 'node'
require_relative 'tree'

tree = Tree.new(Array.new(15) { rand(1..100) })
p "Balanced?   => #{tree.balanced?}"
p "Depth       => #{tree.depth}"
p "Level order => #{tree.level_order}"
p "Pre order   => #{tree.pre_order}"
p "In order    => #{tree.in_order}"
p "Post order  => #{tree.post_order}"
tree.to_s

5.times { tree.insert(rand(101..200)) }

p "Balanced?   => #{tree.balanced?}"
tree.to_s
tree.rebalance!
p "Balancing..."
p "Balanced?   => #{tree.balanced?}"
p "Depth       => #{tree.depth}"
p "Level order => #{tree.level_order}"
p "Pre order   => #{tree.pre_order}"
p "In order    => #{tree.in_order}"
p "Post order  => #{tree.post_order}"
tree.to_s
