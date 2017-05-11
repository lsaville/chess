require 'pawn'
require 'rook'
require 'bishop'
require 'king'
require 'queen'
require 'knight'
require 'tile'

class Board
  attr_accessor :state

  def initialize
    @state = initial_board
  end

  def in_bounds?(position)
    raise "Stop that!" if !(position.chars[0].between?('a', 'h') && position.chars[1].between?('1', '8'))
  end

  def initial_board
    initial_board_setup.map do |location, piece|
      Tile.new(location, piece)
    end
  end

  def initial_board_setup
    {
      "a8"=> Rook.new(true), "b8"=> Knight.new(true), "c8"=> Bishop.new(true), "d8"=> King.new(true), "e8"=> Queen.new(true), "f8"=> Bishop.new(true), "g8"=> Knight.new(true), "h8"=> Rook.new(true),
      "a7"=> Pawn.new(true), "b7"=> Pawn.new(true), "c7"=> Pawn.new(true), "d7"=> Pawn.new(true), "e7"=> Pawn.new(true), "f7"=> Pawn.new(true), "g7"=> Pawn.new(true), "h7"=> Pawn.new(true),
      "a6"=>nil, "b6"=>nil, "c6"=>nil, "d6"=>nil, "e6"=>nil, "f6"=>nil, "g6"=>nil, "h6"=>nil,
      "a5"=>nil, "b5"=>nil, "c5"=>nil, "d5"=>nil, "e5"=>nil, "f5"=>nil, "g5"=>nil, "h5"=>nil,
      "a4"=>nil, "b4"=>nil, "c4"=>nil, "d4"=>nil, "e4"=>nil, "f4"=>nil, "g4"=>nil, "h4"=>nil,
      "a3"=>nil, "b3"=>nil, "c3"=>nil, "d3"=>nil, "e3"=>nil, "f3"=>nil, "g3"=>nil, "h3"=>nil,
      "a2"=> Pawn.new(false), "b2"=> Pawn.new(false), "c2"=> Pawn.new(false), "d2"=> Pawn.new(false), "e2"=> Pawn.new(false), "f2"=> Pawn.new(false), "g2"=> Pawn.new(false), "h2"=> Pawn.new(false),
      "a1"=> Rook.new(false), "b1"=> Knight.new(false), "c1"=> Bishop.new(false), "d1"=> King.new(false), "e1"=> Queen.new(false), "f1"=> Bishop.new(false), "g1"=> Knight.new(false), "h1"=> Rook.new(false)
    }
  end
end
