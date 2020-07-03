# frozen_string_literal: true

require_relative 'node'
require_relative 'tree'

_random_arr = Array.new(15) { rand(1..100) }
static_arr = [5, 4, 3, 6, 2, 1, 7, 8, 9]

pp static_arr

tree = Tree.new(static_arr)

tree.to_s

tree.insert(500)
puts '------------'
tree.to_s

puts tree.find(500)

pp tree.delete(501)

tree.delete(500)
tree.delete(9)
tree.delete(1)
tree.delete(-500)

tree.to_s
