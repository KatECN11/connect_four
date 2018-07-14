require 'minitest/autorun'
require 'minitest/pride'
require './lib/piece'
require './lib/board'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_it_exists
    turn = Turn.new

    assert_instance_of Turn, turn
  end

  def test_it_starts_with_players_turn
    turn = Turn.new

    assert_equal "Player", turn.owner
  end 

end
