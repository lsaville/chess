require_relative '../lib/diagonal_piece'

RSpec.describe DiagonalPiece do
  context '.inc_inc' do
    it 'increments x and y axes' do
      piece = DiagonalPiece.new(true)

      expect(piece.inc_inc('a1')).to eq('b2')
    end
  end

  context '.dec_dec' do
    it 'decrements x and y axes' do
      piece = DiagonalPiece.new(true)

      expect(piece.dec_dec('b2')).to eq('a1')
    end
  end

  context '.inc_dec' do
    it 'increments x and decrements y' do
      piece = DiagonalPiece.new(true)

      expect(piece.inc_dec('a2')).to eq('b1')
    end
  end

  context '.dec_inc' do
    it 'decrements x and increments y' do
      piece = DiagonalPiece.new(true)

      expect(piece.dec_inc('b1')).to eq('a2')
    end
  end
end
