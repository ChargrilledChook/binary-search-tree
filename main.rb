# frozen_string_literal: true

require_relative 'node'
require_relative 'tree'

test_arr = Array.new(15) { rand(1..100) }

pp test_arr

tree = Tree.new(test_arr)

tree.pretty_print

tree.insert(500)
puts '------------'
tree.pretty_print


