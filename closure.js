getWelcome = (word) => { 
  return () => {
    console.log(`Hi, ${word}!`);
  }
}
  
const greetHomie = getWelcome("homie");
const greetFco = getWelcome("Fco");
greetHomie();
greetFco();
