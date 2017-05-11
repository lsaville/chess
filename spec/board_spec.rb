require_relative '../lib/board'

RSpec.describe Board do
  context '.in_bounds?' do
    it 'raises an error if position is outside the chess board' do
      board = Board.new

      expect { board.in_bounds?('a9') }.to raise_error(RuntimeError)
    end
  end
end
