def words_counter(phrase, limit)
  words = phrase.join  
  words.scan(/.{1,#{limit}}/)
end

phrase = ['hola', 'este', 'es', 'un', 'nuevo', 'mensaje']
words_counter(phrase, 10)
