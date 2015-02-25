

# def ceasar_cipher(input, num)
#   input.split(//).map {|x|x.ord}.map{|x| x + num}.map{|x|x.chr}.join
# end

# def easy_to_read_ceasar_cipher(input, shift_number)
#   letter_array = input.split(//)
#   number_array = letter_array.map{|letter| letter.ord}
#   shift_num_array = number_array.map{|num| num + shift_number}
#   scrambled_string = shift_num_array.map {|shift_num| shift_num.chr}.join
# end
# p ceasar_cipher("hello, I'm Alexz", 1)

# p easy_to_read_ceasar_cipher("hello, I'm Alexz", 1)

#so i recognize my first attempt at the ceasar_cipher was kinda weak, so now im going to make the good one, but i should also be able to have the tests work

def ceasar_cipher(input, num)
  input.split(//).map {|x|x.ord}#.map{|x| x + num}.map{|x|x.chr}.join
end

def easy_to_read_ceasar_cipher(input, shift_number)
  letter_array = input.split(//)
  number_array = letter_array.map{|letter| letter.ord}
  shift_num_array = number_array.map{|num| num + shift_number}
  scrambled_string = shift_num_array.map {|shift_num| shift_num.chr}.join
end

# p ceasar_cipher("hello, I'm Alexz", 1)

# p ceasar_cipher("AZaz", 1)

# p ceasar_cipher("?>!$*(", 1)

# p ceasar_cipher("9", 1)

# so the real range for asci characters i'm looking for is

# [32 - 126]
  # AZ[65..90]
  # az[97-122]
# so i won't get any

#what is my goal: build a more correct ceasar_cipher

def ceasars_palace(input, num)
  # convert input to numbers
  # examine numbers, i need a range to work within for caaps/lower
  #its starting to become a real pain to work with a different range than what i have, i wouldn't think caps are that important
  array_of_nums = input.split(//).map {|x|x.ord}
  #if array of nums is between 65-90 or if array of nums is between 97-122, let them cycle between there, other nums cycle in bigger system? I think not, but this is the begining of a more complex crypotgraphic function which does multi mixing
end

p ceasars_palace("AZ",1)
p ceasars_palace("az",1)