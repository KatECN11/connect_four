class Turn
  attr_reader :owner

  def initialize
    @owner = "Player"
  end

  def player(player_column_choice)
    player_column_choice.upcase
  end




end
