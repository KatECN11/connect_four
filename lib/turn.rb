class Turn
  attr_accessor :board

  def initialize(guess, board, piece)
    @guess = guess
    @board = board
    @piece = piece
  end

  def guess
    @guess.upcase
  end

  def find_spot
    guess_column = @board.columns[@guess]
    first_open_space = guess_column.find_index do |space|
                         space == "."
                       end
    guess_column[first_open_space] = @piece.symbol
    end

end
