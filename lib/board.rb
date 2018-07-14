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
    puts @column_names.join
    @rows.each do |row, spots|
      puts spots.join + "\n"
    end
  end

end
