require_relative '../lib/piece'

RSpec.describe Piece do
  context 'basic attributes' do
    it 'has a color' do
      p = Piece.new('black')

      expect(p).to respond_to(:color)
    end
  end

  describe 'movements' do
    context '.horizontal_increment' do
      it 'increments horizontally' do
        piece = Piece.new('black')

        expect(piece.horizontal_increment('a1')).to eq('b1')
      end
    end

    context '.horizontal_decrement' do
      it 'decrements horizontally' do
        piece = Piece.new('black')

        expect(piece.horizontal_decrement('b1')).to eq('a1')
      end
    end

    context '.vertical_increment' do
      it 'increments vertically' do
        piece = Piece.new('black')

        expect(piece.vertical_increment('a1')).to eq('a2')
      end
    end

    context '.vertical_decrement' do
      it 'decrements vertically' do
        piece = Piece.new('black')

        expect(piece.vertical_decrement('a2')).to eq('a1')
      end
    end
  end
end
