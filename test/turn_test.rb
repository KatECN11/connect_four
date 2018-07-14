require 'minitest/autorun'
require 'minitest/pride'
require './lib/piece'
require './lib/board'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_it_exists
    turn = Turn.new("Player")

    assert_instance_of Turn, turn
  end 


end
