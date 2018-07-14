class Board
  attr_reader :column_names, :rows

  def initialize
    @column_names = ["A", "B", "C", "D", "E", "F", "G"]
    @rows = { 1 => [".", ".", ".", ".", ".", ".", "."],
              2 => [".", ".", ".", ".", ".", ".", "."],
              3 => [".", ".", ".", ".", ".", ".", "."],
              4 => [".", ".", ".", ".", ".", ".", "."],
              5 => [".", ".", ".", ".", ".", ".", "."],
              6 => [".", ".", ".", ".", ".", ".", "."]
            }
  end

  def print_board
    printed_rows = @rows.values.map do |spots|
                    spots.join
                   end
    @column_names.join + "\n" + printed_rows.join("\n")
  end

end
