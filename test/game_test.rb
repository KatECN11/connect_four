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
    @turn = Turn.new(@board, @piece)
    @game = Game.new(@board, @piece, @turn)
  end

  def test_it_exists
    assert_instance_of Game, @game
  end

  def test_it_stops_first_loop_after_8th_move
    @turn.turn_count = 8
    actual = @game.first_7_moves

    assert_nil actual
  end

end
