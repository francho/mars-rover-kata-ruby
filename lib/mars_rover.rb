class MarsRover
  attr_reader :direction
  attr_reader :position

  def initialize(initial_direction, initial_x, initial_y)
    @direction=initial_direction
    @position={x: initial_x, y: initial_y}
  end

  def execute(command)
    move_forward if command.eql? 'f'
    move_left if command.eql? 'l'
    move_right if command.eql? 'r'
  end

  protected

  def move_forward
    @position[:y]+=1
  end

  def move_left
    turns={
        :N => :W,
        :W => :S,
        :S => :E,
        :E => :N
    }
    @direction = turns[@direction]
  end

  def move_right
    turns={
        :N => :E,
        :E => :S,
        :S => :W,
        :W => :N
    }
    @direction = turns[@direction]
  end

end
