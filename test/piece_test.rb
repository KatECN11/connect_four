require 'minitest/autorun'
require 'minitest/pride'
require './lib/piece'

class PieceTest < Minitest::Test

  def test_it_exists
    piece = Piece.new

    assert_instance_of Piece, piece
  end 

end
