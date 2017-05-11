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

  def initialize(player1, player2)
    @board   = Board.new
    @players = [Player.new(false, player1), Player.new(true, player2)]
    @turn    = 0
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
