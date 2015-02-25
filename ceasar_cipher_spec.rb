#it handles lower case and upercase

#it can be converted back

#it actually works, aka it actually ciphers stuff

#i wont accept characters with less than 32 chr or 126

require_relative 'ceasar_cipher'

describe '#ceasar_cipher' do
  scrambled_word = ceasar_cipher("hello, I'm Alexz", 1)
  cap_word = ceasar_cipher("HeLLo, I'm AlEx",3)
  it "scrambles the word" do
    expect(scrambled_word).to eq("ifmmp-!J(n!Bmfy{")
  end

  it "handles upper and lower case" do
    expect(cap_word).to eq("KhOOr/#L*p#DoH{")
  end
end