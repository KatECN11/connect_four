require 'minitest/autorun'
require 'minitest/pride'
require './lib/piece'
require './lib/board'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_it_exists

    piece = Piece.new("Player", "X")
    board = Board.new
    turn = Turn.new(board, piece)

    assert_instance_of Turn, turn
  end

  def test_it_takes_player_input_upcased
    piece = Piece.new("Player", "X")
    board = Board.new
    turn = Turn.new(board, piece)

    assert_equal "A", turn.new_guess("a")
  end

  def test_it_starts_with_an_empty_board
    piece = Piece.new("Player", "X")
    board = Board.new
    turn = Turn.new(board, piece)

    assert_instance_of Board, turn.board
  end

  def test_it_finds_next_spot_in_column
    piece = Piece.new("Player", "X")
    board = Board.new
    turn = Turn.new(board, piece)

    turn.new_guess("A")
    turn.find_spot

    actual = board.columns["A"]
    expected = ["X", ".", ".", ".", ".", "."]

    assert_equal expected, actual
  end

  def test_computer_takes_random_guess_after_player
    piece = Piece.new("Player", "X")
    board = Board.new
    turn = Turn.new(board, piece)

    turn.computer_turn
    assert_equal "O", piece.symbol
    assert board.columns.keys.include?(turn.guess)
  end

  def test_computer_guess_recorded
    piece = Piece.new("Player", "X")
    board = Board.new
    turn = Turn.new(board, piece)

    turn.new_guess("A")
    turn.find_spot
    first_move = board.print_prep
    turn.computer_turn
    turn.find_spot
    second_move = board.print_prep

    refute first_move == second_move
    assert_equal 2, turn.turn_count
  end

  def test_piece_switches_back_to_X
    piece = Piece.new("Player", "X")
    board = Board.new
    turn = Turn.new(board, piece)

    turn.new_guess("A")
    turn.find_spot
    turn.computer_turn
    turn.find_spot

    assert_equal "O", piece.symbol

    turn.switch_to_player_turn
    assert_equal "X", piece.symbol

  end

  def test_it_cycles_through_a_turn_set
    piece = Piece.new("Player", "X")
    board = Board.new
    turn = Turn.new(board, piece)

    turn.new_guess("A")
    turn.one_turn_cycle

    assert_equal 2, turn.turn_count
  end



end
