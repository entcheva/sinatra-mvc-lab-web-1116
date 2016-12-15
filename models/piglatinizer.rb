class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]
    if vowels.include?(word.downcase[0])
      word + "way"
    elsif word.length == 1
      word + "way"
    else
      word.each_char.with_index do |char, i|
        if vowels.include?(char)
          word_start = word.slice(0..i-1)
          word_end = word.slice(i..-1)
          pig_word = word_end + word_start + "ay"
          return pig_word
        else
          word
        end
      end
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")

    words.map do |word|
      piglatinize(word)
    end.join(" ")
  end

end
