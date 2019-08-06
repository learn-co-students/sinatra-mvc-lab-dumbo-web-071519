class PigLatinizer

  attr_reader :words


 def piglatinize(text)
       words = self.split_words(text)
       converted = words.map{|word| 
            if %(a e i o u A E I O U).include?(word[0])
                self.vowel_start(word)
            else
                self.consonant_start(word)
            end
        }
        converted.join(" ")
 end

  def split_words(text)
    words = text.split(" ")
  end

  def consonant_start(word)
    parts = word.split(/([aeiou].*)/)
    parts[1] + parts[0] + "ay"
  end

  def vowel_start(word)
     word + "way"
  end

end