const numbers = ["13.09.2017", "13.aa.2018", "44.09.2018", "13.09.7"]
const splitNumbers = []
let positionNumbers = 0
numbers.filter(number => splitNumbers[positionNumbers++] = number.split('.'))

sumResult = (splitNumbers) => {
  let sum = 0 
  positionNumbers = 0

  for(let position = 0 ;position < splitNumbers.length; position++) {
    isNumber = !(splitNumbers[position][positionNumbers].replace(/\d+/g, '')) == ''
    if (isNumber) {continue}
      sum += parseInt(splitNumbers[position][positionNumbers])
      positionNumbers++
  } return sum 
}

sumResult(splitNumbers, positionNumbers)
