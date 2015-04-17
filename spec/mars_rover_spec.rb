require 'rspec'
require_relative '../lib/mars_rover'

describe 'MarsRovers' do

  let(:rover) { MarsRover.new('N', [0,0]) }

  context 'properties' do
    it 'has a direction' do
      expect(rover).to respond_to :direction
    end

    it 'has coordinates' do
      expect(rover).to respond_to :position
    end

    it 'starts at concrete position and direction' do
      expect(rover.direction).to eql 'N'
      expect(rover.position).to eql [0,0]
    end
  end

end
