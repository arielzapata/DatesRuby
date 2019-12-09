def verify_qualification(verdict, qualification)   
  return verdict.values[0] if qualification < 0
  return verdict.values[1] if qualification < 10
  return verdict.values[2] if qualification < 20
  return "no existe veredicto para el valor"    
end 

verdicts = { verdict_1: "sin fico", verdict_2: "con poco fico", verdict_3: "con fico regular" }
verify_qualification(verdicts, 5)
