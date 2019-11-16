require 'json'
require 'stringio'

# Complete the birthday function below.
def birthday(cholate_bar, day, month)
  counter_segment = 0
  counter_position=0
  
  cholate_bar.each do |current_element|
    segment = cholate_bar.slice(counter_position, month)
    counter_segment += 1 if segment.reduce(:+)  == day
    counter_position+=1
  end

  counter_segment
end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

s = gets.rstrip.split.map(&:to_i)

dm = gets.rstrip.split

d = dm[0].to_i

m = dm[1].to_i

result = birthday(s, d, m)

fptr.write result
fptr.write "\n"

fptr.close()

