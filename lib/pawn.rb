require 'piece'

class Pawn < Piece
  def to_s
    return '  p* ' if color
    return '  p  '
  end

  def at_starting_position?(game_state)
    return true if position == game_state.key(self)
    false
  end

  def first_move(destination)
    if destination == vertical_increment(position)
      # update game_state
    elsif
    end

  end
end
