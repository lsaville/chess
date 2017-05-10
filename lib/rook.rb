require 'piece'

class Rook < Piece

  def to_s
    return '  r* ' if color
    return '  r  '
  end
end
