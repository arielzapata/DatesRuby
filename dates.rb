require 'date'

def dates(initial_date, final_date, day)
  dates = []
  counter = 0

  while initial_date.year < (final_date.year + 1) do
    dates[counter] = Date.new(initial_date.year, initial_date.mon, day)
    initial_date = initial_date += 30
    counter += 1 
     
    break if initial_date.month == final_date.mon + 1 && initial_date.year == final_date.year    
  end
  dates
end

dates(Date.new(2001, 8, 3), Date.new(2003, 11, 3), 10)

