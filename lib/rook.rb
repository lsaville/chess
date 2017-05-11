require 'piece'

class Rook < Piece
  def to_s
    return '  r* ' if color
    return '  r  '
  end

  def rules
    #anywhere such that from the starting position, either the first char remains constant or the second char remains constant. NOT both... just one changing.
    return :one_change
  end
end
