require './lib/board'
require './lib/piece'
require './lib/turn'

puts "Welcome to Connect Four!  Here is your board:"

# Need to put this into a new Game class so it's not
# starting a new board everytime


board = Board.new
piece = Piece.new("Player", "X")
play = Turn.new(board, piece)

board.print_board

puts "What column would you like to place your piece?"

new_guess = gets.chomp
play.new_guess(new_guess)
