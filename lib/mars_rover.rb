class MarsRover
  attr_reader :position
  attr_reader :compass

  def initialize(initial_compass, initial_x, initial_y)
    @position={x: initial_x, y: initial_y}
    @compass=initial_compass
  end

  def execute(command)
    move_forward if command.eql? 'f'
    turn_left if command.eql? 'l'
    turn_right if command.eql? 'r'
  end

  protected
  def move_forward
    offset_x = 0
    offset_y = 0

    offset_y=-1 if compass.eql? :N
    offset_y=1 if compass.eql? :S
    offset_x=-1 if compass.eql? :W
    offset_x=1 if compass.eql? :E

    @position[:x]+=offset_x
    @position[:y]+=offset_y
  end

  def turn_left
    turn -1
  end

  def turn_right
    turn +1
  end

  def turn(offset)
    cardinal_points = [:N, :E, :S, :W]
    current_point = cardinal_points.index(@compass) + offset

    current_point=0 if current_point>cardinal_points.count-1
    current_point=cardinal_points.count-1 if current_point<0

    @compass=cardinal_points[current_point]
  end

end
