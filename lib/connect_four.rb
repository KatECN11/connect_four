require './lib/board'

puts "Welcome to Connect Four!  Here is your board:"

board = Board.new
puts board.print_board

puts "What column would you like to place your piece?"
player_column_choice = gets.chomp
turn = Turn.new(player_column_choice)



# In a loop:
#  need to take user input in the form of the column name
# (maybe a board.turn method that will perform these loops)


# take input/column name in turn class
# determine which spot is the first unoccupied spot from the bottom
# in board class
# determine which piece is to be put there (player/comptuer)
# place piece in column
# print board
# computer will then do the same process but with a random column guess
# repeat this loop of guessing and placing pieces.


#  Then that column name will be associated with one of the hashes
#  already set up in the Board class and will be somehow placed into
#  the next open spot below the column header.
#
#  Then the board will display again, then the computer will take its
#  turn, it will select a random column and the program will need to add
#  the computers piece to the bottom opening of that column.
#  Then display the board again.
#
#  Replay loop
