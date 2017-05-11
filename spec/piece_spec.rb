require_relative '../lib/piece'

RSpec.describe Piece do
  context 'basic attributes' do
    it 'has a color' do
      piece = Piece.new(true)

      expect(piece).to respond_to(:color)
    end
  end
end
