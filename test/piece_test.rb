require 'minitest/autorun'
require 'minitest/pride'
require './lib/piece'

class PieceTest < Minitest::Test

  def test_it_exists
    piece = Piece.new("Player")

    assert_instance_of Piece, piece
  end

  def test_it_has_an_owner
    piece = Piece.new("Player")

    assert_equal "Player", piece.owner
  end

  def test_it_has_a_symbol
    piece = Piece.new("Player")

    assert_equal "X", piece.player
  end 

end
