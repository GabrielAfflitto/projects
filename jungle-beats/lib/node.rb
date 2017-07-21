class Node
  attr_accessor :next_node, :data

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def set_next_node(data)
      @next_node = Node.new(data)
  end


end
