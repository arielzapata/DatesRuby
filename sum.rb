def numbers(numbers_array)
  counter_numbers = 0
  slice_numbers = ""
  numbers_extracted = []
  counter_iterations = 0
  sum_numbers = 0
  second_position = 0
  firs_position = 0

  numbers_array.each do |current_element|
    current_element = current_element.to_s
    size = current_element.to_s.length
    
    while slice_numbers != '0'
      slice_numbers = current_element.byteslice(size - counter_numbers)
      numbers_extracted[counter_numbers] = slice_numbers
      counter_numbers += 1 
    end
    firs_position = numbers_extracted.join.byteslice(0).to_i
    second_position = numbers_extracted.join.byteslice(1).to_i

    sum_numbers += numbers_extracted.join.reverse.to_i if firs_position!=0 && second_position!=0
    sum_numbers += firs_position if second_position == 0

    counter_numbers = 0
    counter_iterations += 1
    slice_numbers = ""
  end
  puts sum_numbers
end

numbers_array = [1200000265, 1000002360, 1670000800, 1000006002, 1000000233]
numbers(numbers_array)


