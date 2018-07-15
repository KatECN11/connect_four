class Board
  attr_reader :column_names, :columns

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
    row_1 = ""
    row_2 = ""
    row_3 = ""
    row_4 = ""
    row_5 = ""
    row_6 = ""
    @columns.values.each do |spots|
      row_1 += spots[0]
      row_2 += spots[1]
      row_3 += spots[2]
      row_4 += spots[3]
      row_5 += spots[4]
      row_6 += spots[5]
    end
    printed_board = [@columns.keys.join, row_6, row_5, row_4, row_3, row_2, row_1]
    return printed_board.join("\n")
  end

end
