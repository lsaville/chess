require_relative '../lib/bishop'
require_relative '../lib/king'
require_relative '../lib/rook'
require_relative '../lib/pawn'
require_relative '../lib/queen'
require_relative '../lib/knight'
require_relative '../lib/board'
require_relative '../lib/player'

class NilClass
  def to_s
    '     '
  end
end

class Game
  attr_reader :board, :players, :turn

  def initialize(player1_name, player2_name)
    @board   = Board.new
    @players = [Player.new(false, player1_name), Player.new(true, player2_name)]
    @turn    = 0
  end

  def move(piece, location, destination)
    #Do the location and piece match?
    #Does the piece belong to the current player?
    #Does the destination exist?
    #Is there something at the destination?
    #Does the piece move that way?
    #Is there shit in the way?
    #Does it put the player in check?

    #after all that, move the piece aka update board
  end

  def destination_exist?(destination)
    board.in_bounds?(destination)
  end

  def players_piece?(location)
    @board.state.find do |tile|
      return true if tile.piece != nil && tile.piece.color == @players[@turn].color && tile.location == location
    end
    false
  end

  def piece_at_location?(piece, location)
    @board.state.find do |tile|
      return true if tile.piece.kind_of?(Module.const_get(piece.capitalize)) && tile.location == location
    end
    false
  end

  def print_current_state
    puts '     a     b     c     d     e     f     g     h   '
    puts '  |-----------------------------------------------|'
    board_state = @board.state
    8.downto(1).each do |num|
      row = board_state.shift(8)
      print_row(num, row)
    end
  end

  def print_row(num, row)
    number = num.to_s
    string = "#{num} |"
    row.each do |tile|
      string += tile.piece.to_s + '|'
    end
    puts string
    puts '  |-----------------------------------------------|'
  end
end
