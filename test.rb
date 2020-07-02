require_relative 'node'
require_relative 'tree'

def build_tree(array)
  root = Node.new(array[0])
  array[1..-1].each do |element|
    temp_root = root
    placed = false
    until placed == true
      if element < temp_root.data
        if temp_root.left.nil?
          temp_root.left = Node.new(element)
          placed = true
        else
          temp_root = temp_root.left
        end
      else
        if temp_root.right.nil?
          temp_root.right = Node.new(element)
          placed = true
        else
          temp_root = temp_root.right
        end
      end
    end
  end
  root
end

def node_placer(temp_root)
  if element < temp_root.data
    if temp_root.left.nil?
      temp_root.left = Node.new(element)
      true
    else
      temp_root = temp_root.left
      temp_root
    end
  else
    if temp_root.right.nil?
      temp_root.right = Node.new(element)
      true
    else
      temp_root = temp_root.right
      temp_root
    end
  end
end