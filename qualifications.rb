def verify_qualification(verdict, qualification)
  verdict.select { |k, v| return k.to_s.sub('_', ' ') if qualification < v }
  return "no existe veredicto para el valor"
end 
  
verdict = { sin_fico: 0, con_poco_fico: 10, con_fico_regular: 20 }
verify_qualification(verdict, 3)   
