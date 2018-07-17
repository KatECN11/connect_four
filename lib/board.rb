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

  def four_in_a_column
    winning_piece = ""
    @columns.values.each do |spaces|
        3.times do |i|
          test = spaces[i]
          if test != "."
            if (test == spaces[i+1]) && (test = spaces[i+2]) && (test = spaces[i+3])
              winning_piece = test
              break
            end
          end
        end
      end
    winning_piece
  end

  def four_in_a_row
    winning_piece = ""
    @columns.values.transpose.each do |spaces|
        4.times do |i|
          test = spaces[i]
          if test != "."
            if (test == spaces[i+1]) && (test = spaces[i+2]) && (test = spaces[i+3])
              winning_piece = test
              break
            end
          end
        end
      end
    winning_piece
  end

  def end?
    if four_in_a_row == "" && four_in_a_column == ""
      false
    else
      true
    end
  end

  def determination
    if four_in_a_row == "X" || four_in_a_column == "X"
      "You win!"
    else
      "You lose."
    end
  end 

end
