class MarsRover
  attr_accessor :direction
  attr_accessor :position

  def initialize(initial_direction, initial_x, initial_y)
    @direction=initial_direction
    @position={x: initial_x, y: initial_y}
  end

  def execute(command)
    move_forward if command=='f'
  end

  protected

  def move_forward
    @position[:y]+=1
  end

end
