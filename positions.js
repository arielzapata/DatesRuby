const numbers = ["13.09.2017", "13.aa.2018", "44.09.2018", "13.09.7"]
const sortNumbers = []
let positionNumbers = 0
numbers.filter(number => sortNumbers[positionNumbers++] = number.split('.'))

sumResult = (sortNumbers) => {
  let sum = 0 
  let positionNumbers = 0

  for(let i = 0 ;i < sortNumbers.length; i++) {
    if ((sortNumbers[i][positionNumbers].replace(/\d+/g, '')) == '') {
      sum += parseInt(sortNumbers[i][positionNumbers])
      positionNumbers++
    }
  } return sum 
}

sumResult(sortNumbers, positionNumbers)