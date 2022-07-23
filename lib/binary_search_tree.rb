require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)

    if !@root
      return nil
    end

    current_node = @root

    while true
      if current_node.value == value
        return current_node
      elsif current_node.value > value       
        if current_node.left
          current_node = current_node.left
        else
          return nil
        end
      elsif current_node.value < value
        if current_node.right
          current_node = current_node.right
        else 
          return nil
        end
      end 
    end

  end

  def insert(value)
    
    node = Node.new(value)

    if !@root
      @root = node
      return node
    end 

    current_node = @root

    while true
      if current_node.value = value
        return nil
      elsif current_node.value < value && current_node.right = nil
        current_node.right = node
        return node
      elsif current_node.value < value && current_node.right
        current_node = current_node.right
      elsif current_node.value > value && current_node.left = nil
        current_node.left = node
        return node
      elsif current_node.value > value && current_node.left
        current_node = current_node.left
      end
    end

  end

end 
