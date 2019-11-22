const people = ["Pedro", "Maria", "Rosa"]
const animals = ["Caballo", "Oso", "Perro"]
const things = ["Petroleo", "Carne", "Rosca"]

finder = (keyToFind) => {
  const words = people.concat(animals).concat(things)
  const matchs = words.filter(word=> word.search(keyToFind) > -1)

  if(matchs.length){ console.log(matchs); Promise.resolve().then(resolved, rejected);}
  else Promise.reject(new Error('fail')).then(resolved, rejected);
}

const resolved = (coincidences) => {
  console.log('Resolved: there are coincidences');
}

const rejected = (coincidences) => {
  console.error(result);
}

finder("Pe")





