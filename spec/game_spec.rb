require_relative '../lib/game'

RSpec.describe Game do
  context '@board' do
    it 'has a Rook at a1' do
      game = Game.new

      expect(game.board['a1']).to be_a(Rook)
    end
  end
end
