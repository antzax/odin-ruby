def substrings(substring, dictionary)
  result = Hash.new

  dictionary.each do |word|
      if substring.downcase.include?(word)
        word_count = substring.scan(/#{word}/i).count
        hash = Hash[word => word_count]
        result.merge!(hash)
      end
  end
  
  return result
end

substring = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

test = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
answer = substrings(substring, dictionary)
puts test == answer
