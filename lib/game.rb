# require EVERYTHING!!!

class Game
  def initialize
    @board = set_up_board
  end

  private
    def set_up_board
      {
        "a1"=> Rook.new(false) ,  "a2"=> Pawn.new(false), "a3"=>nil, "a4"=>nil, "a5"=>nil, "a6"=>nil, "a7"=> Pawn.new(true), "a8"=> Rook.new(true),
        "b1"=> Knight.new(false), "b2"=> Pawn.new(false), "b3"=>nil, "b4"=>nil, "b5"=>nil, "b6"=>nil, "b7"=> Pawn.new(true), "b8"=> Knight.new(true),
        "c1"=> Bishop.new(false), "c2"=> Pawn.new(false), "c3"=>nil, "c4"=>nil, "c5"=>nil, "c6"=>nil, "c7"=> Pawn.new(true), "c8"=> Bishop.new(true),
        "d1"=> King.new(false),   "d2"=> Pawn.new(false), "d3"=>nil, "d4"=>nil, "d5"=>nil, "d6"=>nil, "d7"=> Pawn.new(true), "d8"=> King.new(true),
        "e1"=> Queen.new(false),  "e2"=> Pawn.new(false), "e3"=>nil, "e4"=>nil, "e5"=>nil, "e6"=>nil, "e7"=> Pawn.new(true), "e8"=> Queen.new(true),
        "f1"=> Bishop.new(false), "f2"=> Pawn.new(false), "f3"=>nil, "f4"=>nil, "f5"=>nil, "f6"=>nil, "f7"=> Pawn.new(true), "f8"=> Bishop.new(true),
        "g1"=> Knight.new(false), "g2"=> Pawn.new(false), "g3"=>nil, "g4"=>nil, "g5"=>nil, "g6"=>nil, "g7"=> Pawn.new(true), "g8"=> Knight.new(true),
        "h1"=> Rook.new(false),   "h2"=> Pawn.new(false), "h3"=>nil, "h4"=>nil, "h5"=>nil, "h6"=>nil, "h7"=> Pawn.new(true), "h8"=> Rook.new(true)
      }
    end
end
