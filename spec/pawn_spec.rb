require_relative '../lib/pawn'

RSpec.describe Pawn do
  context '.at_starting_position?(game_state)' do
    it 'returns true if the pawn is at the starting position' do
      game = Game.new
      pawn = game.board['a2']
      expect(pawn.at_starting_position?(game.board)).to eq(true)
    end

    it 'returns false if the pawn is not at the starting position' do

    end
  end
end
