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
    while ("H".."Z").include?(guess.upcase)
      puts "Pick column A - G"
      guess = gets.chomp
    end
      @guess = guess.upcase
  end

  def player_turn
    @piece.symbol = "X"
    find_spot
    puts @board.print_board
    puts "\nGreat move!"
    puts "\n"
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
    computer_turn_set_up
    find_spot
    puts @board.print_board
  end

  def computer_turn_set_up
    @piece.symbol = "O"
    @guess = @board.columns.keys.shuffle.pop
    until @board.columns[@guess].include?'.'
      @guess = @board.columns.keys.shuffle.pop
    end
  end
end
