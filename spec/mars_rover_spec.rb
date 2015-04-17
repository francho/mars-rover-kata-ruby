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

  context 'basic movement' do
    it 'moves forward' do
      rover.execute('f')
      expect(rover.position).to include(x: 0, y: 1)
    end
  end

end
