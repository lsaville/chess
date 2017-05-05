class Piece
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def horizontal_increment(starting_position)
    "#{starting_position[0].next}#{starting_position[1]}"
    #new_pos if in_bounds?(new_pos)
  end

  def horizontal_decrement(starting_position)
    "#{starting_position[0].ord.pred.chr}#{starting_position[1]}"
  end

  def vertical_increment(starting_position)
    "#{starting_position[0]}#{starting_position[1].next}"
  end

  def vertical_decrement(starting_position)
    "#{starting_position[0]}#{starting_position[1].to_i.pred.to_s}"
  end

  def in_bounds?(position)
    raise "Stop that!" if !(position.chars[0].between?('a', 'h') && position.chars[1].between('1', '8'))
  end
end
