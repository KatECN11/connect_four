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

  def test_it_prints_a_new_board
    board = Board.new

    expected = "ABCDEFG\n
                .......\n
                .......\n
                .......\n
                .......\n
                .......\n
                ......."

    assert_equal expected, board.print_board
  end

end
