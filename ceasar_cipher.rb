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

# how will i acomadate z to a or Z to A? ASCII values will need to be researched

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
p ceasar_cipher("hello, I'm Alex", 5)

p easy_to_read_ceasar_cipher("hello, I'm Alex", 5)

def unshifter(method_or_string_from_above, shift_amnt)
  #eh, i know how, need to move on, although, another cryptographic question is, how do you sneakily figure out the shift number, that is the 'key'
end