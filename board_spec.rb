require './board'

RSpec.describe Board, '#new' do
  context 'when given a size' do
    let(:board) { Board.new(size: 12) }

    it 'initializes a board with specified size' do
      expect(board.size).to eq(12)
    end

    it 'does not create a default size board' do
      expect(board.size).to_not eq(10)
    end
  end

  context 'when given no params' do
    let(:board) { Board.new }

    it 'creates a size 10 board' do
      expect(board.size).to eq(10)
    end
  end

end
