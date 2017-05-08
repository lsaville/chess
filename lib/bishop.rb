require 'diagonal_piece'

class Bishop < DiagonalPiece
  def move(start, destination)

  end

  def to_s
    return '  b* ' if color
    return '  b  '
  end
end
