def substrings(string, dictionary)
  string.downcase!
  result = Hash.new(0)
  dictionary.each do |word|
    string.scan(word) { result[word] += 1 }
  end
  result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)