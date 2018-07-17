require 'minitest/autorun'
require 'minitest/pride'
require './lib/piece'
require './lib/board'
require './lib/turn'
require './lib/game'

class GameTest < Minitest::Test

  def setup
    @board = Board.new
    @piece = Piece.new("Player", "X")
    @play = Turn.new(@board, @piece)
    @game = Game.new(@board, @piece, @play)
  end

  def test_it_exists
    assert_instance_of Game, @game
  end

  

end
