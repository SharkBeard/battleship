require './ship'

describe Ship, 'new' do
  context 'when creating a battleship' do
    it 'creates a ship of specified type' do
      expect(Ship.new(type: Ship::BATTLESHIP).type).to eq(Ship::BATTLESHIP)
    end

    it 'has a size of 4' do
      expect(Ship.new(type: Ship::BATTLESHIP).size).to eq(4)
    end
  end

  context 'when creating a carrier' do
    it 'is of the carrier type' do
      expect(Ship.new(type: Ship::CARRIER).type).to eq(Ship::CARRIER)
    end

    it 'has a size of 5' do
      expect(Ship.new(type: Ship::CARRIER).size).to eq(5)
    end
  end
end
