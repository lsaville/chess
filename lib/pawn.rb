require 'piece'

class Pawn < Piece
  def to_s
    return '  p* ' if color
    return '  p  '
  end
end
