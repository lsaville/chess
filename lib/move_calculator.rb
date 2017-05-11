module MoveCalculator
  #need to change these methods so that we can supply a multiplier and move multiple spaces
  class << self
    def horizontal_increment(starting_position)
      "#{starting_position[0].next}#{starting_position[1]}"
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
  end
end
