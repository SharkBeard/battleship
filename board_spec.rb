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

RSpec.describe Board, '#fire' do
  let(:board) { Board.new }

  context 'when taking a shot' do
    it 'stores shots' do
      board.fire([3, 2])
      expect(board.shots).to include([3, 2])
    end
  end

  context 'when shooting negative coords' do
    it 'throws an exception' do
      expect { board.fire([-1, 0]) }.to raise_exception('outside of board')
    end
  end

  context 'when shooting out of range' do
    it 'throws an exception' do
      expect { board.fire([0, 55]) }.to raise_exception('outside of board')
    end

    it 'throws an exception when equal to size' do
      expect { board.fire([10, 3]) }.to raise_exception('outside of board')
    end

    it 'throws an exception if shooting the same place twice' do
      board.fire(1, 1)
      expect { board.fire(1, 1) }.to raise_exception('already shot at the space')
    end
  end
end
