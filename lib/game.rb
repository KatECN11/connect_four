class Game

  def initialize(board, piece, turn)
    @board = board
    @piece = piece
    @turn = turn
  end

  # Ceo method
  def new_game
    start_game
    first_7_moves
    play_until_win
  end

  def start_game
    puts "Welcome to Connect Four!  Here is your board:"
    puts @board.print_board
  end

  def first_7_moves
    while @turn.turn_count <= 7
      puts "What column would you like to place your piece?"
      new_guess = gets.chomp
      @turn.new_guess(new_guess)
      @turn.player_turn
      @turn.computer_turn
    end
  end

  def play_until_win
    while @turn.turn_count <= 42
      puts "What column would you like to place your piece?"
      new_guess = gets.chomp
      @turn.new_guess(new_guess)
      @turn.player_turn
        if win?
          determination
          break
        end
      @turn.computer_turn
      if win?
        determination
        break
      end
    end
  end

  def win?
    straight_win?(@board.columns_in_string) || straight_win?(@board.rows_in_string)
  end

  def straight_win?(joint_spaces)
    joint_spaces.any? do |space|
        space.include? (@piece.symbol * 4)
      end
  end


  def determination
    if @piece.symbol == "X"
      puts "You win!"
    else
      puts "You lose."
    end
  end

end
