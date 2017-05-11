require 'piece'

class Pawn < Piece
  attr_accessor :moved

  def initialize(color)
    super(color)
    @moved = false
  end

  def to_s
    return '  p* ' if color
    return '  p  '
  end

  def valid_move?(starting, destination)

    #if moved it can only move one ahead or capture on the diagonal
    #if it hasn't moved it can do one OR two spaces forward but could possibly capture
  end
end
