require 'piece'

class Pawn < Piece
  attr_accessor :moved

  def initialize(color)
    @moved = false
    super(color)
  end

  def to_s
    return '  p* ' if color
    return '  p  '
  end

  def self.valid_move?(starting, destination)
    start_col, start_row = starting[0], starting[1]
    dest_col, dest_row   = destination[0], destination[1]
    move_length = dest_row.to_i - start_row.to_i
    require "pry"; binding.pry
    if move_length == 2 && !@moved
      (start_col == dest_col) && ((start_row.ord + 2) == dest_col)
    elsif
      (start_col == dest_col) && ((start_row.ord + 1) == dest_col)
    else
      false
    end
    #if moved it can only move one ahead or capture on the diagonal
    #if it hasn't moved it can do one OR two spaces forward but could possibly capture
  end
end
