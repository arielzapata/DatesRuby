const numbers = [[6, 7, 8], [1, 4, 29], [4, 78, 12]];
let numbersCol = [];
let sumNumbers = [];

maxSum = (numbers) => {
  numbers.filter(number => sumNumbers.push(number.reduce((sum, number) => sum + number)));
  numbersCol = numbers.map((column, number) => numbers.map(row => row[number]));
  numbersCol.filter(number => sumNumbers.push(number.reduce((sum, number) => sum + number)));
  return Math.max.apply(null, sumNumbers);
};

console.log(maxSum(numbers));