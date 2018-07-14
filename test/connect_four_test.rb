require 'minitest/autorun'
require 'minitest/pride'
require './lib/connect_four'

class ConnectFourTest < Minitest::Test

  def test_it_exists
    connect_four = ConnectFour.new

    assert_instance_of ConnectFour, connect_four
  end 

end
