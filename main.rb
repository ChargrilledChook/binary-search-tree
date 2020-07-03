# frozen_string_literal: true

require_relative 'node'
require_relative 'tree'

test_arr = Array.new(15) { rand(1..100) }

pp test_arr

tree = Tree.new(test_arr)

tree.to_s

tree.insert(500)
puts '------------'
tree.to_s

puts tree.find(500)
