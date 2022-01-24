class Sudoku
  def check(list)
    list.tally[1] == 1 && list.tally[2] == 1 && list.tally[3] == 1 && list.tally[4] == 1 && list.tally[5] == 1 && list.tally[6] == 1 && list.tally[7] == 1 && list.tally[8] == 1 && list.tally[9] == 1
  end
end
