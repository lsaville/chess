require_relative '../lib/bishop'
require_relative '../lib/king'
require_relative '../lib/rook'
require_relative '../lib/pawn'
require_relative '../lib/queen'
require_relative '../lib/knight'

class NilClass
  def to_s
    '     '
  end
end

class Game
  attr_reader :board

  def initialize
    @board = set_up_board
  end

  def print_current_state
    puts '     a     b     c     d     e     f     g     h   '
    puts '  |-----------------------------------------------|'
    8.downto(1).each do |num|
      print_row(num)
    end
  end

  def print_row(num)
    number = num.to_s
    string = "#{num} |"
    ('a'..'h').to_a.each do |letter|
      string += @board[letter + number].to_s + '|'
    end
    puts string
    puts '  |-----------------------------------------------|'
  end

  private
    def set_up_board
      {
        "a1"=> Rook.new(false, 'a1') ,  "a2"=> Pawn.new(false, 'a2'), "a3"=>nil, "a4"=>nil, "a5"=>nil, "a6"=>nil, "a7"=> Pawn.new(true, 'a7'), "a8"=> Rook.new(true, 'a8'),
        "b1"=> Knight.new(false, 'b1'), "b2"=> Pawn.new(false, 'b2'), "b3"=>nil, "b4"=>nil, "b5"=>nil, "b6"=>nil, "b7"=> Pawn.new(true, 'b7'), "b8"=> Knight.new(true, 'b8'),
        "c1"=> Bishop.new(false, 'c1'), "c2"=> Pawn.new(false, 'c2'), "c3"=>nil, "c4"=>nil, "c5"=>nil, "c6"=>nil, "c7"=> Pawn.new(true, 'c7'), "c8"=> Bishop.new(true, 'c8'),
        "d1"=> King.new(false, 'd1'),   "d2"=> Pawn.new(false, 'd2'), "d3"=>nil, "d4"=>nil, "d5"=>nil, "d6"=>nil, "d7"=> Pawn.new(true, 'd7'), "d8"=> King.new(true, 'd8'),
        "e1"=> Queen.new(false, 'e1'),  "e2"=> Pawn.new(false, 'e2'), "e3"=>nil, "e4"=>nil, "e5"=>nil, "e6"=>nil, "e7"=> Pawn.new(true, 'e7'), "e8"=> Queen.new(true, 'e8'),
        "f1"=> Bishop.new(false, 'f1'), "f2"=> Pawn.new(false, 'f2'), "f3"=>nil, "f4"=>nil, "f5"=>nil, "f6"=>nil, "f7"=> Pawn.new(true, 'f7'), "f8"=> Bishop.new(true, 'f8'),
        "g1"=> Knight.new(false, 'g1'), "g2"=> Pawn.new(false, 'g2'), "g3"=>nil, "g4"=>nil, "g5"=>nil, "g6"=>nil, "g7"=> Pawn.new(true, 'g7'), "g8"=> Knight.new(true, 'g8'),
        "h1"=> Rook.new(false, 'h1'),   "h2"=> Pawn.new(false, 'h2'), "h3"=>nil, "h4"=>nil, "h5"=>nil, "h6"=>nil, "h7"=> Pawn.new(true, 'h7'), "h8"=> Rook.new(true, 'h8')
      }
    end
end
