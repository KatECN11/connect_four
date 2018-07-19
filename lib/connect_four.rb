require './lib/board'
require './lib/piece'
require './lib/turn'
require './lib/game'

board = Board.new
piece = Piece.new("Player", "X")
play = Turn.new(board, piece)
game = Game.new(board, piece, play)

game.new_game

puts "Would you like to play again? (yes or no)"
response = gets.chomp
while response.upcase == "YES"
  board = Board.new
  piece = Piece.new("Player", "X")
  play = Turn.new(board, piece)
  game = Game.new(board, piece, play)

  game.new_game
  puts "Would you like to play again?"
  response = gets.chomp
end

puts "Thank you for playing!"
