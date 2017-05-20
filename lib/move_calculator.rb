module MoveCalculator
  #need to change these methods so that we can supply a multiplier and move multiple spaces
  class << self
    def horizontal_increment(starting_position, num_spaces)
      new_position = (starting_position[0].ord + num_spaces).chr
      "#{new_position}#{starting_position[1]}"
    end

    def horizontal_decrement(starting_position, num_spaces)
      new_position = (starting_position[0].ord + num_spaces).chr
      "#{starting_position[0].ord.pred.chr}#{starting_position[1]}"
    end

    def vertical_increment(starting_position, num_spaces)
      new_position = (starting_position[1].ord + num_spaces).chr
      "#{starting_position[0]}#{starting_position[1].next}"
    end

    def vertical_decrement(starting_position, num_spaces)
      new_position = (starting_position[1].ord + num_spaces).chr
      "#{starting_position[0]}#{starting_position[1].to_i.pred.to_s}"
    end
  end
end
