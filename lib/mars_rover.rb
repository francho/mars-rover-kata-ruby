class MarsRover
  attr_reader :direction
  attr_reader :position

  def initialize(initial_direction, initial_x, initial_y)
    @direction=initial_direction
    @position={x: initial_x, y: initial_y}
  end

  def execute(command)
    move_forward if command.eql? 'f'
    turn_left if command.eql? 'l'
    turn_right if command.eql? 'r'
  end

  protected

  def move_forward
    @position[:y]+=1
  end

  def turn_left
    @direction = turn -1
  end

  def turn_right
    @direction = turn +1
  end

  protected
  def turn(offset)
    cardinal_points = [:N, :E, :S, :W]
    current_point = cardinal_points.index(@direction)

    current_point+=offset
    current_point=0 if current_point>cardinal_points.count-1
    current_point=cardinal_points.count-1 if current_point<0

    cardinal_points[current_point]
  end

end
