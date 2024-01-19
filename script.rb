dictionary = ["below","low","down","go","going","horn","how","howdy","it","i","low",
              "own","part","partner","sit"]

def substrings(string, dictionary)
  counter = {}

  counted = dictionary.map do |word|
    if string.include?(word)
      counter[word] = 0
      counter.each do |k, v|
        v = v + 1
      end
    end
  end

  p counter
end

substrings("below", dictionary)