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

  def test_it_finds_straight_win
    @board.columns["A"] = ["X", "O", "X", "X", "X", "X"]

    joint_spaces = @board.columns_in_string

    assert @game.straight_win?(joint_spaces)
  end

  def test_it_finds_win
    @board.columns["D"] = ["X", ".", ".", ".", ".", "."]
    @board.columns["E"] = ["X", ".", ".", ".", ".", "."]
    @board.columns["F"] = ["X", ".", ".", ".", ".", "."]
    @board.columns["G"] = ["X", ".", ".", ".", ".", "."]

    assert @game.win?

    @board.columns["D"] = ["X", ".", ".", ".", ".", "."]
    @board.columns["E"] = ["O", ".", ".", ".", ".", "."]
    @board.columns["F"] = ["X", ".", ".", ".", ".", "."]
    @board.columns["G"] = ["X", ".", ".", ".", ".", "."]

    refute @game.win?

    @piece.symbol = "O"
    @board.columns["D"] = ["O", ".", ".", ".", ".", "."]
    @board.columns["E"] = ["O", ".", ".", ".", ".", "."]
    @board.columns["F"] = ["O", ".", ".", ".", ".", "."]
    @board.columns["G"] = ["O", ".", ".", ".", ".", "."]

    assert @game.win?
  end

  def test_it_can_tell_win_versus_loss
  assert_equal "You win!", @game.determination

  @piece.symbol = "O"

  assert_equal "You lose.", @game.determination
  end


end
