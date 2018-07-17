class Turn
  attr_accessor :board, :turn_count
  attr_reader :guess

  def initialize(board, piece)
    @guess = ""
    @board = board
    @piece = piece
    @turn_count = 0
  end

  def new_guess(guess)
    @guess = guess.upcase
    one_turn_cycle
  end

  def one_turn_cycle
    find_spot
    puts @board.print_board
    puts "\nGreat move!"
    puts "\n"
    computer_turn
    find_spot
    puts @board.print_board
    switch_to_player_turn
  end

  def find_spot
    guess_column = @board.columns[@guess]
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

  def switch_to_player_turn
    @piece.symbol = "X"
  end


end
