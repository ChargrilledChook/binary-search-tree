# frozen_string_literal: true

require_relative 'node'
require_relative 'tree'

test_arr = Array.new(15) { rand(1..100) }

tree = Tree.new(test_arr)

tree.pretty_print
