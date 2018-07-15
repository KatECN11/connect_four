require './lib/board'
require './lib/piece'
require './lib/turn'

puts "Welcome to Connect Four!  Here is your board:"

board = Board.new
board.print_board
