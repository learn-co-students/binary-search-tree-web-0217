
class BST
  attr_accessor :data, :left, :right

  def initialize(data)
    self.data = data
  end

  def insert(data)
    if self.data >= data
      if left.nil?
        self.left = BST.new(data)
      else
        self.left.insert(data)
      end
    else
      if right.nil?
        self.right = BST.new(data)
      else
        self.right.insert(data)
      end
    end
  end
  
  def each
  end
end
