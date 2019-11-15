def sum_numbers(numbers)
    sum = 0
  
  numbers.each do |number|
    number = number.to_s
    numbers_reverse = number.reverse
    number_index = number.reverse.index("0")-1
    sum += numbers_reverse.slice(0..number_index).reverse.to_i if numbers_reverse.byteslice(0).to_i != 0
  end
  
  sum  
end

numbers = [1200000265, 1000002360, 1670000800, 1000006002, 1000000233]
sum_numbers(numbers)
