require_relative '../lib/piece'

RSpec.describe Piece do
  context 'basic attributes' do
    it 'has a color' do
      piece = Piece.new(true, 'a3')

      expect(piece).to respond_to(:color)
    end

    it 'has a position' do
      piece = Piece.new(true, 'a2')

      expect(piece).to respond_to(:position)
    end
  end

  describe 'movements' do
    context '.horizontal_increment' do
      it 'increments horizontally' do
        piece = Piece.new(true, 'a1')

        expect(piece.horizontal_increment('a1')).to eq('b1')
      end
    end

    context '.horizontal_decrement' do
      it 'decrements horizontally' do
        piece = Piece.new(true, 'b1')

        expect(piece.horizontal_decrement('b1')).to eq('a1')
      end
    end

    context '.vertical_increment' do
      it 'increments vertically' do
        piece = Piece.new(true, 'a1')

        expect(piece.vertical_increment('a1')).to eq('a2')
      end
    end

    context '.vertical_decrement' do
      it 'decrements vertically' do
        piece = Piece.new(true, 'a2')

        expect(piece.vertical_decrement('a2')).to eq('a1')
      end
    end

    context '.in_bounds?' do
      it 'raises an error if position is outside the chess board' do
        piece = Piece.new(true, 'a2')

        expect { piece.in_bounds?('a9') }.to raise_error(RuntimeError)
      end
    end


  end
end
