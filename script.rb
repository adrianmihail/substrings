dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
              "own","part","partner","sit"]

def substrings(string, dictionary)
  
  string_clean = string.downcase.split

  result = dictionary.reduce(Hash.new(0)) do |found, word|
    string_clean.each do |match|
      found[word] += 1 if match.include?(word)
    end
    found
  end
  p result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)