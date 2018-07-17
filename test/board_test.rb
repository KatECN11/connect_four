require 'minitest/autorun'
require 'minitest/pride'
require './lib/piece'
require './lib/board'
require './lib/turn'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new

    assert_instance_of Board, board
  end

  def test_it_starts_with_7_columns_with_6_periods
    board = Board.new

    actual = board.columns.values.count
    expected = 7

    assert_equal expected, actual

    all_periods = true
    actual = board.columns.values.each do |spots|
                  if spots.uniq != ["."]
                    all_periods = false
                  end
                end
    assert_equal true, all_periods
  end

  def test_columns_can_be_updated
    board = Board.new

    board.columns["A"][0] = "X"
    expected = board.columns["A"]
    actual = ["X", ".", ".", ".", ".", "."]

    assert_equal expected, actual
  end

  def test_it_prints_board
    board = Board.new

    expected =
    "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n......."

    assert_equal expected, board.print_prep
  end

  def test_it_can_find_four_in_a_column
    board = Board.new

    board.columns["A"] = ["X", "X", "X", "X", ".", "."]

    actual = board.four_in_a_column
    expected = "X"

    assert_equal expected, actual

    board.columns["A"] = ["X", "X", "O", "X", ".", "."]
    board.columns["F"] = ["X", "X", "O", "O", "O", "O"]

    actual = board.four_in_a_column
    expected = "O"

    assert_equal expected, actual
  end

  def test_it_can_find_four_in_a_row
    board = Board.new

    board.columns["A"] = ["X", ".", ".", ".", ".", "."]
    board.columns["B"] = ["X", ".", ".", ".", ".", "."]
    board.columns["C"] = ["X", ".", ".", ".", ".", "."]
    board.columns["D"] = ["X", ".", ".", ".", ".", "."]

    expected = "X"
    actual = board.four_in_a_row

    assert_equal expected, actual

    board.columns["A"] = ["X", ".", ".", ".", ".", "."]
    board.columns["B"] = ["O", ".", ".", ".", ".", "."]
    board.columns["C"] = ["O", ".", ".", ".", ".", "."]
    board.columns["D"] = ["O", ".", ".", ".", ".", "."]
    board.columns["E"] = ["O", ".", ".", ".", ".", "."]

    expected = "O"
    actual = board.four_in_a_row

    assert_equal expected, actual
  end

  def test_it_returns_true_when_win_occurs
    board = Board.new

    board.columns["A"] = ["X", "X", "X", "X", ".", "."]
    assert board.end?

    board.columns["A"] = ["X", ".", ".", ".", ".", "."]
    board.columns["B"] = ["O", ".", ".", ".", ".", "."]

    refute board.end?
  end


end
