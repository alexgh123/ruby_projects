  # > caesar_cipher("What a string!", 5)
  #   => "Bmfy f xywnsl!"

  #   In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

# input: the word, number of letters to shift
# output: the word, shifted

# first we will take the input word,
#we will then turn the word into an array of each individual letter. (2 steps?)
#for each individaul letter, we will then change it to the number it is represented by on teh ASCII number range thingy,
#we will then add the number argument passed in.
#we now have an array of numbers.
#we will change the new numbers into the +num numbers.
#next we change the new numbers into new letters.
#we will then compress the letter array back into words array, then


# quick and dirty version:

def ceasar_cipher(input, num)
  input.split(//).map {|x|x.ord}.map{|x| x + num}.map{|x|x.chr}.join
end

def easy_to_read_ceasar_cipher(input, shift_number)
  letter_array = input.split(//)
  number_array = letter_array.map{|letter| letter.ord}
  shift_num_array = number_array.map{|num| num + shift_number}
  scrambled_string = shift_num_array.map {|shift_num| shift_num.chr}.join
end
p ceasar_cipher("hello, I'm Alexz", 50)

p easy_to_read_ceasar_cipher("hello, I'm Alexz", 50)

#notes below on how to do a more challenging 'more correct' version

# how will i acomadate z to a or Z to A? ASCII values will need to be researched

#see further below for less rigrous version, i guess the only test for whether the method is viable is if you can unscramble it, i started to go down that road, but didn't b/c i think i acomplished assignment goals

#so im going not do the more challenging version, but if i did, the mvp migth be to have a cap on the number of ASCII characters you can jump forward (limit the 2nd arg passed in to no more than 5, like a fliter). The next more challenging way to build the cipher is to have the ascii values range and only have the values shift within the range. Idk, i think I acomplished the goal of the project and am moving on while recognizing this could be improved