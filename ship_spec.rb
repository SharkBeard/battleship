require './ship'

describe Ship, 'new' do
  let(:patrol) { Ship.new(type: Ship::PATROL, x: 1, y: 2, direction: :horizontal) }
  let(:destroyer) { Ship.new(type: Ship::DESTROYER, x: 1, y: 2, direction: :horizontal) }
  let(:submarine) { Ship.new(type: Ship::SUBMARINE, x: 1, y: 2, direction: :horizontal) }
  let(:battleship) { Ship.new(type: Ship::BATTLESHIP, x: 1, y: 2, direction: :vertical) }
  let(:carrier) { Ship.new(type: Ship::CARRIER, x: 1, y: 2, direction: :horizontal) }

  context 'when creating a battleship' do
    it 'creates a ship of specified type' do
      expect(battleship.type).to eq(Ship::BATTLESHIP)
    end

    it 'has a size of 4' do
      expect(battleship.size).to eq(4)
    end

    it 'takes up 4 cells' do
      expect(battleship.cells.count).to eq(4)
    end

    it 'is going the right direction' do
      expect(battleship.cells).not_to include([2, 2])
    end
  end

  context 'when creating a carrier' do
    it 'is of the carrier type' do
      expect(carrier.type).to eq(Ship::CARRIER)
    end

    it 'has a size of 5' do
      expect(carrier.size).to eq(5)
    end

    it 'has the middle cell' do
      expect(carrier.cells).to include([3, 2])
    end
  end
end

RSpec.describe Ship, '#status' do
  let(:battleship) { Ship.new(type: Ship::BATTLESHIP, x: 1, y: 2, direction: :vertical) }

  context 'when a battleship is hit 4 times' do
    it 'has a status of destroyed' do
      4.times do
        battleship.hit
      end
      expect(battleship.status).to eq(:destroyed)
    end
  end
end
