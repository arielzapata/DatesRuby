const people = ["Pedro", "Maria", "Rosa"]
const animals = ["Caballo", "Oso", "Perro"]
const things = ["Petroleo", "Carne", "Rosca"]

const term = (findTerm) => {
  const word = people.concat(animals).concat(things)
  const matchs = word.filter(word => word.toLowerCase().search(term.toLowerCase()) > -1)
  return matchs 
}

findTerm("pe")
