class Array

  def two_sum
    result = []
    self.each_index do |idx_one|
      next if idx_one == self.length - 1
      ((idx_one + 1)...self.length).each do |idx_two|
        result << [idx_one, idx_two] if self[idx_one] + self[idx_two] == 0
      end
    end
    result
  end

  def my_transpose
    result = Array.new(self.length) { Array.new(self.length)}
    self.each_index do |row_index|
      self[row_index].each_index do |column_index|
        result[column_index][row_index] = self[row_index][column_index]
      end
    end
    result
  end

end
