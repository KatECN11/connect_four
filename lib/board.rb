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
  #
  # def print_board
  #   printed_rows = @rows.values.map do |spots|
  #                   spots.join
  #                  end
  #   @column_names.join + "\n" + printed_rows.join("\n")
  # end

end
