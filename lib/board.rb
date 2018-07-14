class Board
  attr_reader :column_names, :columns

  def initialize
    @column_names = ["A", "B", "C", "D", "E", "F", "G"]
    @columns = {
                :A => [".", ".", ".", ".", ".", "."],
                :B => [".", ".", ".", ".", ".", "."],
                :C => [".", ".", ".", ".", ".", "."],
                :D => [".", ".", ".", ".", ".", "."],
                :E => [".", ".", ".", ".", ".", "."],
                :F => [".", ".", ".", ".", ".", "."],
                :G => [".", ".", ".", ".", ".", "."]
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
    printed_board = [@column_names.join, row_1, row_2, row_3, row_4, row_5, row_6]
    return printed_board.join("\n")
  end

end
