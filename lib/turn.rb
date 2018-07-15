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

  def take_turn
    # CEO method
    # loop for taking player input and then running
    # computer guess and turn
  end

  def find_spot
    # can work for computer and player
    guess_column = @board.columns[guess]
    first_open_space = guess_column.find_index do |space|
                         space == "."
                       end
    guess_column[first_open_space] = @piece.symbol
  end

  def computer_turn
    @piece.symbol = "O"
    @guess = @board.columns.keys.shuffle.pop
  end

end
