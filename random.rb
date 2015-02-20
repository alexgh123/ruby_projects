def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

def palindrom(word)
  #if word is the same backwards as forwards, true
  return true if word == word.reverse
end