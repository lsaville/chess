require 'piece'

class Knight < Piece
  def to_s
    return '  k* ' if color
    return '  k  '
  end
end
