class Piece
  attr_accessor :owner, :symbol

  def initialize(owner, symbol)
    @owner = owner
    @symbol = symbol
  end
end
