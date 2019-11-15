def numbers(numbers_array)
  sum=0
  numbers_array.each do |current_element|
    current_element = current_element.to_s
    numbers_reverse=current_element.reverse
    numbers_index=current_element.reverse.index("0")
      
    sum+=numbers_reverse.slice(0..numbers_index-1).reverse.to_i if current_element.reverse.byteslice(0).to_i!=0
  end
  sum  
end

numbers_array = [1200000265, 1000002360, 1670000800, 1000006002, 1000000233]
numbers(numbers_array)
