require_relative '../lib/bishop'
require_relative '../lib/king'
require_relative '../lib/rook'
require_relative '../lib/pawn'
require_relative '../lib/queen'
require_relative '../lib/knight'
require_relative '../lib/board'

class NilClass
  def to_s
    '     '
  end
end

class Game
  attr_reader :board

  def initialize
    @board = Board.new
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
    # ('a'..'h').to_a.each do |letter|
    #   string += @board[letter + number].to_s + '|'
    # end
    puts string
    puts '  |-----------------------------------------------|'
  end
end
