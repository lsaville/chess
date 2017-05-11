class Tile
  attr_reader :location, :piece

  def initialize(input_location, piece)
    @location = input_location
    @piece    = piece
  end
end
