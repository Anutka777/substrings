substrings_dictionary = [
  "below",
  "down",
  "go",
  "going",
  "horn",
  "how",
  "howdy",
  "it",
  "i",
  "low",
  "own",
  "part",
  "partner",
  "sit"
]

def substrings(string, substrings_dictionary)
  result = Hash.new(0)
  substrings_dictionary.each do |substr|
    result[substr] += string.downcase.scan(substr).length
  end
  return result.reject { |substr, times| times == 0 }
end

# p substrings('below', substrings_dictionary)
# p substrings("Howdy partner, sit down! How's it going?", substrings_dictionary)