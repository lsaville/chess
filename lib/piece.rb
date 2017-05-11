class Piece
  attr_reader :color

  def initialize(color)
    @color    = color
  end

  def same_team?(position)
    # is it a blocking piece or can it be captured?
  end
end
