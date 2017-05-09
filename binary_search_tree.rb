require "pry"
class BST
  attr_accessor :data, :left, :right
  def initialize(data)
    @data = data
  end

  def insert(value)
    if value <= data
      if !self.left
        self.left = BST.new(value)
      else
        self.left.insert(value)
      end
    else
      if !self.right
        self.right = BST.new(value)
      else
        self.right.insert(value)
      end
    end
  end

  def each(&block)
    left.each(&block) if left
    block.call(data)
    right.each(&block) if right
  end

end
