
def substrings(phrase, dictionary) 
    phrase.downcase!
    dictionary.reduce(Hash.new(0)) do |result,word|
        next result if word.length > phrase.length #dont run if the dictionary word is longer than the phrase
        occurences = phrase.scan(word).length 
        next result unless occurences > 0 #dont add to result if no occurences
        result[word] += occurences
        result
    end
end




dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)