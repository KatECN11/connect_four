class Board
  attr_accessor :columns

  def initialize
    @columns = {
                "A" => [".", ".", ".", ".", ".", "."],
                "B" => [".", ".", ".", ".", ".", "."],
                "C" => [".", ".", ".", ".", ".", "."],
                "D" => [".", ".", ".", ".", ".", "."],
                "E" => [".", ".", ".", ".", ".", "."],
                "F" => [".", ".", ".", ".", ".", "."],
                "G" => [".", ".", ".", ".", ".", "."]
            }
  end

  def print_board
    puts print_prep
  end

  def print_prep
    rows = @columns.values.transpose
    joint_rows = rows.map do |row|
                  row.join
                end
    @columns.keys.join + ("\n") + joint_rows.reverse.join("\n")
  end

  def win?
    # input algorithm to determine win/loss/draw
    # if  == "win"
    #   puts "You win!"
    # elsif  == "draw"
    #   puts "Tie Game"
    # elsif  == "lose"
    #   puts "Sorry, you've been beat!"
    # else 
    false
  end

end
