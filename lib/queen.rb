require 'piece'

class Queen < Piece
  def to_s
    return '  Q* ' if color
    return '  Q  '
  end
end
