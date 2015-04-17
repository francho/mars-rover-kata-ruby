class MarsRover
  attr_accessor :direction
  attr_accessor :position

  def initialize(initial_direction, initial_position)
    @direction=initial_direction
    @position=initial_position
  end
end
