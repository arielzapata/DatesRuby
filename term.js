const people = ["Pedro", "Maria", "Rosa"]
const animals = ["Caballo", "Oso", "Perro"]
const things = ["Petroleo", "Carne", "Rosca"]

term = (termToFind) => {
  const words = people.concat(animals).concat(things)
  const matchs = words.filter(term => term.toLowerCase().search(termToFind.toLowerCase()) > -1)
  console.log(matchs) 
}

term("ros")
