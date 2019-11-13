
def palindrome?(word)
  word = word.delete(' ')
  word == word.reverse
end

palindrome?("anita lava la tina")
