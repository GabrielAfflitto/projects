require './lib/node'
require 'pry'
class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0

  end

  def append(data)
    if @head == nil
       @head = Node.new(data)
       @count += 1
       data
    else
      add_to_end(data)
    end
  end


  def add_to_end(data, node = @head)
    if node.next_node != nil
      last_node(data, node.next_node)
    else
      node.next_node = Node.new(data)
      data
    end
  end


  def prepend(data)
    if @head == nil
      @head = Node.new(data)
    else
      new_node = Node.new(data)
      @head.next_node.data
      @head = new_node
      @count += 1
    end
  data
  end

  def to_string
    current_node = @head
    print_array = []
    until current_node == nil
      print_array << current_node.data
      current_node = current_node.next_node
    end
    print_array.join(" ")
  end

  def count
    @count += 1
  end

end
