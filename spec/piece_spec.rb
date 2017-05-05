require_relative '../lib/piece'

RSpec.describe Piece do
  context 'basic attributes' do
    it 'has a color' do
      p = Piece.new

      expect(p).to respond_to(:color)
    end
  end
end
