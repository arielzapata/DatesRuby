def calculate(a, b)  
  yield(a,b)   
end  

calculate(15, 10) {|a, b| a - b}
calculate(15, 10) {|a, b| a + b}
calculate(15, 10) {|a, b| a * b}
calculate(15, 10) {|a, b| a.fdiv(b)} 
