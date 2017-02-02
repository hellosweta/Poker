
class Array
  def my_uniq
    output = []
      self.each do |el|
        output << el unless output.include?(el)
      end
    output
  end

  def two_sum
    output = []
    i = 0
    while i < self.length
      j = i + 1
      while j < self.length
            if self[i] + self[j] == 0 && i != j
              output << [i,j].sort unless output.include?([i,j].sort)
            end
          j += 1
      end
      i += 1
    end
    output
  end

  def my_transpose
    output = []
    (0...length).each do |x|
      row = []
      (0...length).each do |y|
         row << self[y][x] unless self[y][x].nil?
      end
      output << row
    end
    output
  end


end

def stock_picker(array)

  delta = 0
  indices = []

  array.each_with_index do |price, index|
    j = index + 1
    while j < array.length
      if array[j] - array[index] > delta
        delta = array[j] - array[index]
        indices = [index, j]
      end
      j += 1
    end
  end
  indices
end
