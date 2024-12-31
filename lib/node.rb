class Node
  attr_accessor :value, :next_node

  def initialize
    self.value = nil
    self.next_node = nil
  end

  def to_s
    value
  end
end
