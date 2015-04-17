require 'rspec'
require_relative '../lib/mars_rover'

# 3
# 2
# 1
# 0 1 2 3

describe 'MarsRovers' do

  let(:rover) { MarsRover.new('N', 0, 0) }

  context 'properties' do
    it 'has a direction' do
      expect(rover).to respond_to :direction
    end

    it 'has coordinates' do
      expect(rover).to respond_to :position
    end

    it 'starts at concrete position and direction' do
      expect(rover.direction).to eql 'N'
      expect(rover.position).to include(x: 0, y: 0)
    end
  end

  context 'turns left' do
    it 'point to WEST when turn left from NORTH' do
      rover = MarsRover.new('N',0,0)
      rover.execute 'l'
      expect(rover.direction).to eql 'W'
    end

    it 'point to SOUTH when turn left from WEST' do
      rover = MarsRover.new('W',0,0)
      rover.execute 'l'
      expect(rover.direction).to eql 'S'
    end

    it 'point to EAST when turn left from SOUTH' do
      rover = MarsRover.new('S',0,0)
      rover.execute 'l'
      expect(rover.direction).to eql 'E'
    end

    it 'point to NORTH when turn left from EAST' do
      rover = MarsRover.new('E',0,0)
      rover.execute 'l'
      expect(rover.direction).to eql 'N'
    end
  end

  context 'turns right' do
    it 'point to EAST when turn right from NORTH' do
      rover = MarsRover.new('N',0,0)
      rover.execute 'r'
      expect(rover.direction).to eql 'E'
    end

    it 'point to SOUTH when turn right from EAST' do
      rover = MarsRover.new('E',0,0)
      rover.execute 'r'
      expect(rover.direction).to eql 'S'
    end

    it 'point to WEST when turn right from SOUTH' do
      rover = MarsRover.new('S',0,0)
      rover.execute 'r'
      expect(rover.direction).to eql 'W'
    end

    it 'point to NORTH when turn right from WEST' do
      rover = MarsRover.new('W',0,0)
      rover.execute 'r'
      expect(rover.direction).to eql 'N'
    end
  end

  context 'basic movement' do
    it 'moves forward' do
      rover.execute('f')
      expect(rover.position).to include(x: 0, y: 1)
    end
  end

end
