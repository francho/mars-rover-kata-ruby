class MarsRover
  attr_reader :position

  def initialize(initial_compass, initial_x, initial_y)
    @position={compass: initial_compass, x: initial_x, y: initial_y}
  end

  def execute(command)
    move_forward if command.eql? 'f'
    turn_left if command.eql? 'l'
    turn_right if command.eql? 'r'
  end

  def compass
    position[:compass]
  end

  protected
  def move_forward
    @position[:y]+=1
  end

  def turn_left
    turn -1
  end

  def turn_right
    turn +1
  end

  def turn(offset)
    cardinal_points = [:N, :E, :S, :W]
    current_point = cardinal_points.index(compass) + offset

    current_point=0 if current_point>cardinal_points.count-1
    current_point=cardinal_points.count-1 if current_point<0

    position[:compass]=cardinal_points[current_point]
  end

end
