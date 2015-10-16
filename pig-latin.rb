def convert_word_to_pig_latin(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  if vowels.include?(word.slice(0, 1))
    word
  else
    if word.slice(0, 2) == "qu"
      word.split("").rotate(2).join("").concat("ay")
    else
      word.split("").rotate.join("").concat("ay")
    end
  end
end

def convert_sentence_to_pig_latin(sentence)
  words = sentence.downcase.split(" ")
  words.map{ |word| convert_word_to_pig_latin(word) }
    .join(" ").capitalize
end

p convert_sentence_to_pig_latin("Quest for dungeon")
