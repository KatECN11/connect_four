require './lib/board'

puts "Welcome to Connect Four!  Here is your board:"

board = Board.new
puts board.print_board

puts "What column would you like to place your piece?"
player_column_choice = gets.chomp
turn = Turn.new(player_column_choice)
