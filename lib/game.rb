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
    actual_piece = @board[location].piece
    move_the_piece = [
      piece_at_location?(piece, location),
      players_piece?(location),
      destination_exist?(destination),
      destination_occupied_by_enemy?(destination),
      possible_move?(piece, location, destination, destination_occupied?(destination))
    ].all?
    # looking good.  We're leaving off trying to figure out how to check the color of
    # the piece in possible_move, but possible move calls a class method on the given
    # piece and we never had the piece color information besides in the players_piece?
    # method. Should we get the actual piece and pass it thus committing code smell of
    # passing an instance of the class to a method on the class itself? Is there a
    # better way? It seems like game should have some convenience methods around current
    # player and maybe to grab the piece. We could simply get the color and pass it.
    # Only time will tell...

    #Do the location and piece match?
    #Does the piece belong to the current player?
    #Does the destination exist?
    #Is there something at the destination?
    #Does the piece move that way?
    #Is there shit in the way?
    #Does it put the player in check?

      #after all that, move the piece aka update board aka move_the_piece = true
  end

  def destination_occupied_by_enemy?(destination)
    board.state.each do |tile|
      return true if tile.location == destination && tile.piece.color != @players[@turn].color
    end
    false
  end

  def possible_move?(piece, location, destination)
    Module.const_get(piece.capitalize).valid_move?(location, destination)
  end

  def destination_occupied?(destination)
    board.state.each do |tile|
      return true if tile.location == destination && tile.piece
    end
    false
  end

  def destination_exist?(destination)
    board.in_bounds?(destination)
  end

  def players_piece?(location)
    board.state.find do |tile|
      return true if tile.piece != nil && tile.piece.color == players[turn].color && tile.location == location
    end
    false
  end

  def piece_at_location?(piece, location)
    board.state.find do |tile|
      return true if tile.piece.kind_of?(Module.const_get(piece.capitalize)) && tile.location == location
    end
    false
  end

  def print_current_state
    puts '     a     b     c     d     e     f     g     h   '
    puts '  |-----------------------------------------------|'
    board_state = board.state
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
