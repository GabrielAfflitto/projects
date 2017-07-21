require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def test_its_a_thing
    list = LinkedList.new

    assert_equal LinkedList, list.class
  end

  def test_that_head_is_nil_by_default
    list = LinkedList.new

    assert_nil list.head
  end

  def test_append_returns_doop
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.append("doop")
  end

  def test_next_node_is_nil_by_default
    node = Node.new("plop")

    assert_nil node.next_node
  end

  def test_append_works
    list = LinkedList.new

    list.append("doop")
    assert_equal "doop", list.head.data
  end

  def test_that_the_count_is_1
    list = LinkedList.new

    expected = 0

    actual = list.count

    assert_equal expected, actual
  end

  def test_returns_the_data_to_a_string
    list = LinkedList.new
    list.append("doop")
    expected = "doop"
    actual = list.to_string


    assert_equal expected, actual
  end


  # def test_that_prepend_works
  #   list = LinkedList.new
  #   list.prepend("dop")
  #
  #   assert_equal "dop", actual list.prepend
  # end

  # def test_that_next_node_still_exists_after_prepend
  #   list = LinkedList.new("doop")
  #
  #   expected = "doop"
  #   actual = node.next_node("doop")
  #
  #   assert_equal expected, actual
  # end

  def test_the_list_can_be_appended_further
    list = LinkedList.new
    expected = "deep"
    actual = list.append("deep")

    assert_equal expected, actual
  end



end
