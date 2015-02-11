def substring(word, dictionary)
  result = Hash.new(0)
  multi_word = word.downcase.scan(/[\w']+/)
  dictionary.each do |item|
    multi_word.each do |words|
      if words.include? item
        result[item] += 1
      end
    end
  end
  p result
end

substring("horn", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
)
