require_relative '../lib/game'

RSpec.describe Game do
  context '@board' do
    xit 'has a Rook at a1' do
      game = Game.new

      expect(game.board.a1).to be_a(Rook)
    end
  end

  context '.print_current_state' do
    it 'prints the current game state' do
      game = Game.new
      starting_board = "     a     b     c     d     e     f     g     h   \n  |-----------------------------------------------|\n8 |  r* |  k* |  b* |  K* |  Q* |  b* |  k* |  r* |\n  |-----------------------------------------------|\n7 |  p* |  p* |  p* |  p* |  p* |  p* |  p* |  p* |\n  |-----------------------------------------------|\n6 |     |     |     |     |     |     |     |     |\n  |-----------------------------------------------|\n5 |     |     |     |     |     |     |     |     |\n  |-----------------------------------------------|\n4 |     |     |     |     |     |     |     |     |\n  |-----------------------------------------------|\n3 |     |     |     |     |     |     |     |     |\n  |-----------------------------------------------|\n2 |  p  |  p  |  p  |  p  |  p  |  p  |  p  |  p  |\n  |-----------------------------------------------|\n1 |  r  |  k  |  b  |  K  |  Q  |  b  |  k  |  r  |\n  |-----------------------------------------------|\n"

      expect{ game.print_current_state }.to output(starting_board).to_stdout
    end
  end

  context '.print_row(row_number, row)' do
    it 'prints a row' do
      game = Game.new
      row = [Tile.new('a8', Rook.new(true)), Tile.new('b8', Knight.new(true)), Tile.new('c8', Bishop.new(true)), Tile.new('d8', King.new(true)), Tile.new('e8', Queen.new(true)), Tile.new('f8', Bishop.new(true)), Tile.new('g8', Knight.new(true)), Tile.new('h8', Rook.new(true))]

      expect{ game.print_row(8, row) }.to output("8 |  r* |  k* |  b* |  K* |  Q* |  b* |  k* |  r* |\n  |-----------------------------------------------|\n").to_stdout
    end
  end
end
