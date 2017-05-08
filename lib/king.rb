require 'piece'

class King < Piece
  def to_s
    return '  K* ' if color
    return '  K  '
  end
end
