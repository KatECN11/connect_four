class Piece
  attr_reader :owner

  def initialize(owner)
    @owner = owner
  end

  def player
    "X"
  end
end
