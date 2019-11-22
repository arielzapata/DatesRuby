const people = ["Pedro", "Maria", "Rosa"]
const animals = ["Caballo", "Oso", "Perro"]
const things = ["Petroleo", "Carne", "Rosca"]

finder = (termToFind) => {
  const words = people.concat(animals).concat(things)
  const matchs = words.filter(term=> term.search(termToFind) > -1)
  return matchs
}

finder("Pe")
