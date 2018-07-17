require './lib/board'
require './lib/piece'
require './lib/turn'
require './lib/game'

board = Board.new
piece = Piece.new("Player", "X")
play = Turn.new(board, piece)
game = Game.new(board, piece, play)

game.new_game
