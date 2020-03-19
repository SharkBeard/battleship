require './ship'

describe Ship, 'new' do
  let(:patrol) { Ship.new(type: Ship::PATROL) }
  let(:destroyer) { Ship.new(type: Ship::DESTROYER) }
  let(:submarine) { Ship.new(type: Ship::SUBMARINE) }
  let(:battleship) { Ship.new(type: Ship::BATTLESHIP) }
  let(:carrier) { Ship.new(type: Ship::CARRIER) }

  context 'when creating a battleship' do
    it 'creates a ship of specified type' do
      expect(battleship.type).to eq(Ship::BATTLESHIP)
    end

    it 'has a size of 4' do
      expect(battleship.size).to eq(4)
    end
  end

  context 'when creating a carrier' do
    it 'is of the carrier type' do
      expect(carrier.type).to eq(Ship::CARRIER)
    end

    it 'has a size of 5' do
      expect(carrier.size).to eq(5)
    end
  end
end
