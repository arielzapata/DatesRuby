def max_sum(numbers)
  sum_values = []
  
  numbers.each do |row|
    sum_values.push(row.inject(:+))
  end

  numbers.transpose.each do |column|
    sum_values.push(column.inject(:+))
  end
  sum_values.max
end

numbers = [[6, 7, 8], [1, 4, 29], [4, 78, 12]]
max_sum(numbers)