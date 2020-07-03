class Tree
  attr_accessor :root
  attr_reader :input

  def initialize(input)
    @root = build_tree(input)
  end

  # Constructs a BST and returns the root node
  def build_tree(array)
    root = Node.new(array[0])
    array.uniq[1..-1].each { |value| insert(value, root) }
    root
  end

  def insert(value, node = root)
    node = traverse_tree(value, node) until traverse_tree(value, node).nil?
    if node_left?(value, node)
      node.left = Node.new(value)
    else
      node.right = Node.new(value)
    end
  end
  
  def delete(value)
    # TODO
  end
  
  def find(value)
    # TODO
  end

  def level_order(block)
    # TODO
  end

  def in_order(block)
    # TODO
  end

  def pre_order(block)
    # TODO
  end

  def post_order(block)
    # TODO
  end

  def depth(node)
    # TODO
  end

  def balanced?
    # TODO
  end

  def rebalance!
    # TODO
  end

  # See private methods for details
  def to_s
    pretty_print
  end

  # Bonus - define_method / metaprogramming
  
  private

  def traverse_tree(value, node)
    if node_left?(value, node)
      node.left
    else
      node.right
    end
  end

  def node_left?(value, node)
    value < node.data
  end

  # Credit to Fensus from Odin discord - prints a visual reprentation of tree in console
  def pretty_print(node = root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
end