#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(numbers)
  size = numbers.length
  counter_positives = 0
  counter_zeros = 0
  counter_negatives = 0

  numbers.each do |current_number|
    counter_positives += 1 if current_number.positive?
    counter_zeros += 1 if current_number.zero?
    counter_negatives += 1 if current_number.negative?  
  end

  ratio_positives = counter_positives.fdiv(size)
  ratio_zeros = counter_zeros.fdiv(size)
  ratio_negatives = counter_negatives.fdiv(size)

  puts ratio_positives
  puts ratio_negatives
  puts ratio_zeros
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr

