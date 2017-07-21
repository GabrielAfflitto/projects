class Car
  attr_reader :current_speed

  def initialize(current_speed = 0)
    @current_speed = current_speed
  end
end
