require './board'

RSpec.describe Board, '#new' do
  context 'when given a size' do
    it 'initializes a board with specified size' do
      expect(Board.new(size: 12).size).to eq(12)
    end
    it 'does not create a default size board' do
      expect(Board.new(size: 12).size).to_not eq(10)
    end
  end
  context 'when given no params' do
    it 'creates a size 10 board' do
      expect(Board.new.size).to eq(10)
    end
  end

end
