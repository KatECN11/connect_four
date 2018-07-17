require './lib/board'
require './lib/piece'
require './lib/turn'

board = Board.new
piece = Piece.new("Player", "X")
play = Turn.new(board, piece)

puts "Welcome to Connect Four!  Here is your board:"
board.print_board

while play.turn_count <= 7
  puts "What column would you like to place your piece?"
  new_guess = gets.chomp
  play.new_guess(new_guess)
end

until board.end?
  puts "What column would you like to place your piece?"
  new_guess = gets.chomp
  play.new_guess(new_guess)
end

board.determination
