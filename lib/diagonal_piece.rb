require 'piece'

class DiagonalPiece < Piece
  def inc_inc(starting_position)
    "#{starting_position[0].next}#{starting_position[1].next}"
  end

  def dec_dec(starting_position)
    "#{starting_position[0].ord.pred.chr}#{starting_position[1].to_i.pred.to_s}"
  end

  def inc_dec(starting_position)
    "#{starting_position[0].next}#{starting_position[1].to_i.pred.to_s}"
  end

  def dec_inc(starting_position)
    "#{starting_position[0].ord.pred.chr}#{starting_position[1].next}"
  end
end
