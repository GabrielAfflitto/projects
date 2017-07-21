require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new
    assert_equal Node, node.class
  end

  def test_it_holds_data
    node = Node.new("plop")

    assert_equal "plop", node.data
  end


  def test_next_node_for_nil
    node = Node.new(" ")

    assert_nil nil, node.next_node
  end

end
