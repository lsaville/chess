require_relative '../lib/game'
require_relative '../lib/player'

RSpec.describe Game do
  context '.destination_exist?(destination)' do
    it 'returns true if the destination exists' do
      game = Game.new('Jon', 'Lee')

      expect(game.destination_exist?('a5')).to eq(true)
    end

    it 'returns false if the destination doesnt exist' do
      game = Game.new('Jon', 'Lee')

      expect(game.destination_exist?('a9')).to eq(false)
    end
  end

  context '.players_piece?(piece)' do
    it 'returns true if the piece belongs to the player' do
      game = Game.new('Anna', 'Lee')

      expect(game.players_piece?('a1')).to eq(true)
    end

    it 'returns false if the piece doesnt belong to that player' do
      game = Game.new('Anna', 'Lee')

      expect(game.players_piece?('a8')).to eq(false)
    end
  end

  context '.piece_at_location?' do
    it 'returns true if the piece and location match' do
      game = Game.new('Anna', 'Lee')

      expect(game.piece_at_location?('pawn', 'a2')).to eq(true)
    end

    it 'returns false if the piece and location dont match' do
      game = Game.new('Anna', 'Lee')

      expect(game.piece_at_location?('pawn', 'a3')).to eq(false)
    end
  end

  context '@board' do
    it 'has a Rook at a1' do
      game = Game.new('Anna', 'Lee')

      expect(game.board.piece_at('a1')).to be_a(Rook)
    end
  end

  context 'basic attributes' do
    it 'has two players' do
      game = Game.new('Anna', 'Lee')

      expect(game.players).to be_an(Array)
      expect(game.players[0]).to be_a(Player)
    end
  end

  context '.print_current_state' do
    it 'prints the current game state' do
      game = Game.new('Anna', 'Lee')
      starting_board = "     a     b     c     d     e     f     g     h   \n  |-----------------------------------------------|\n8 |  r* |  k* |  b* |  K* |  Q* |  b* |  k* |  r* |\n  |-----------------------------------------------|\n7 |  p* |  p* |  p* |  p* |  p* |  p* |  p* |  p* |\n  |-----------------------------------------------|\n6 |     |     |     |     |     |     |     |     |\n  |-----------------------------------------------|\n5 |     |     |     |     |     |     |     |     |\n  |-----------------------------------------------|\n4 |     |     |     |     |     |     |     |     |\n  |-----------------------------------------------|\n3 |     |     |     |     |     |     |     |     |\n  |-----------------------------------------------|\n2 |  p  |  p  |  p  |  p  |  p  |  p  |  p  |  p  |\n  |-----------------------------------------------|\n1 |  r  |  k  |  b  |  K  |  Q  |  b  |  k  |  r  |\n  |-----------------------------------------------|\n"

      expect{ game.print_current_state }.to output(starting_board).to_stdout
    end
  end

  context '.print_row(row_number, row)' do
    it 'prints a row' do
      game = Game.new('Anna', 'Lee')
      row = [Tile.new('a8', Rook.new(true)), Tile.new('b8', Knight.new(true)), Tile.new('c8', Bishop.new(true)), Tile.new('d8', King.new(true)), Tile.new('e8', Queen.new(true)), Tile.new('f8', Bishop.new(true)), Tile.new('g8', Knight.new(true)), Tile.new('h8', Rook.new(true))]

      expect{ game.print_row(8, row) }.to output("8 |  r* |  k* |  b* |  K* |  Q* |  b* |  k* |  r* |\n  |-----------------------------------------------|\n").to_stdout
    end
  end
end
