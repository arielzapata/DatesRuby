def multiply(list)
  position = 0
  numbers_list = []
  
  list.each do |current_number|
    numbers_list[position] = list.inject(:*) / current_number
    position += 1   
  end
  numbers_list
end

numbers_list = [1, 2, 3, 4, 7]
multiply(numbers_list)
