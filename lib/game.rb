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
    end
  end

  #
  # until board.win?
  #     puts "What column would you like to place your piece?"
  #     new_guess = gets.chomp
  #     play.new_guess(new_guess)
  # end

end
