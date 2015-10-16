def anagrams?(string1, string2)
  anagram_canonical_form(string1) == anagram_canonical_form(string2)
  # string1.upcase.split("").sort == string2.upcase.split("").sort
end

def anagram_canonical_form(word)
  word.upcase.split("").sort
end
