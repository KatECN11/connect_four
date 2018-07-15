class Turn
  attr_accessor :board
  attr_reader :turn_count

  def initialize(guess, board, piece)
    @guess = guess
    @board = board
    @piece = piece
    @turn_count = 0
  end

  def guess
    @guess.upcase
  end

  def one_turn_cycle
    find_spot
    board.print_board
    computer_turn
    find_spot
    board.print_board
  end

  def find_spot
    guess_column = @board.columns[guess]
    first_open_space = guess_column.find_index do |space|
                         space == "."
                       end
    @turn_count += 1
    guess_column[first_open_space] = @piece.symbol
  end

  def computer_turn
    @piece.symbol = "O"
    @guess = @board.columns.keys.shuffle.pop
    until @board.columns[@guess].include?'.'
      @guess = @board.columns.keys.shuffle.pop
    end
  end



end
