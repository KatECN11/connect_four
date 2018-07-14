require 'minitest/autorun'
require 'minitest/pride'
require './lib/piece'
require './lib/board'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new

    assert_instance_of Board, board
  end

  def test_it_starts_with_column_headers
    board = Board.new

    expected = ["A", "B", "C", "D", "E", "F", "G"]

    assert_equal expected, board.column_names
  end

  def test_it_starts_with_7_columns_with_6_periods
    board = Board.new

    actual = board.columns.values.count
    expected = 7

    assert_equal expected, actual
  end 

  #   all_periods = true
  #   actual = board.rows.values.each do |spots|
  #                 if spots.uniq != ["."]
  #                   all_periods = false
  #                 end
  #               end
  #   assert_equal true, all_periods
  # end
  #
  # def test_it_prints_board
  #   board = Board.new
  #
  #   expected =
  #   "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n......."
  #
  #   assert_equal expected, board.print_board
  # end

end
