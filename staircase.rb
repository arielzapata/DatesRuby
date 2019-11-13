#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(size)
  step_rows = 1

  while step_rows < size + 1
    rows = "#" * step_rows
    space = " " * (size - step_rows)
    puts space + rows
    step_rows += 1
  end
end

size = gets.to_i

staircase(size)

