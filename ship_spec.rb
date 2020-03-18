require './ship'

describe Ship, 'new' do
  it 'creates a ship of specified type' do
    expect(Ship.new(type: Ship::BATTLESHIP).type).to eq(Ship::BATTLESHIP)
  end
end
