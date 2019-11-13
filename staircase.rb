#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(size)
  steps_files = 1

  while steps_files < size + 1
    filas = "#" * steps_files
    space = " " * (size - steps_files)
    puts space + filas
    steps_files += 1
  end
end

size = gets.to_i

staircase(size)

