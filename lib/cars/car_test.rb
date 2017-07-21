require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'lib/car'

class CarTest < Minitest::Test
  def test_it_exists
    car = Car.new

    assert_equal Car, car.class
  end
  def test_initial_speed
    car = Car.new

    expected = 0
    actual = car.current_speed
  end

end
  #test it exists
  #test its initial speed is 0
  # test it can speed up
