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
    printed_rows = join_spaces(columns_to_rows)
    @columns.keys.join + ("\n") + printed_rows.reverse.join("\n")
  end

  def join_spaces(spaces)
    spaces.map do |space|
      space.join
    end
  end

  def columns_to_rows
    @columns.values.transpose
  end

  def rows_in_string
    join_spaces(columns_to_rows)
  end

  def columns_in_string
    join_spaces(@columns.values)
  end
end
