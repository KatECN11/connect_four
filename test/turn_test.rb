require 'minitest/autorun'
require 'minitest/pride'
require './lib/piece'
require './lib/board'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_it_exists
    turn = Turn.new("A")

    assert_instance_of Turn, turn
  end

  def test_it_takes_player_input
    turn = Turn.new("a")

    assert_equal "A", turn.guess
  end

  def test_it_finds_next_spot_in_column
    board = Board.new
    turn = Turn.new("A")

    expected = board.columns["A"][0]
    actual = turn.find_spot

    assert_equal expected, actual
  end



end
