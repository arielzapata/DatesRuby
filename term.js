const people = ["Pedro", "Maria", "Rosa"]
const animals = ["Caballo", "Oso", "Perro"]
const things = ["Petroleo", "Carne", "Rosca"]

const findWords = (term) => {
  const word = people.concat(animals).concat(things)
  const wordsFound = word.filter(word => word.toLowerCase().search(term.toLowerCase()) > -1)
  return wordsFound 
}

findWords("pe")
