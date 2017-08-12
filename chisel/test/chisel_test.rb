require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'
require 'pry'

class ChiselTest < Minitest::Test
  def test_it_exists
    chisel = Chisel.new("# My Life in Desserts")

    assert_instance_of Chisel, chisel
  end

  def test_it_can_split_string
    chisel = Chisel.new("# My Life in Desserts")

    assert_equal ["# My Life in Desserts"], chisel.input
  end

  def test_it_can_convert_header
    chisel = Chisel.new("# My Life in Desserts")

    assert_equal ["<h1>My Life in Desserts</h1>"], chisel.convert
  end

  

end
