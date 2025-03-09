def substrings(substring, dictionary)
  result = Hash.new

  dictionary.each do |word|
      if substring.downcase.include?(word)
        word_count = substring.scan(/#{word}/i).count
        result[:"#{word}"] = word_count
      end
  end

  return result
end


# TEST DATA
substring = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
test = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
test_count = test.values.count

# RESULT
answer = substrings(substring, dictionary)
answer_count = answer.values.count

# TEST
if answer_count == test_count
  puts "OK"
end