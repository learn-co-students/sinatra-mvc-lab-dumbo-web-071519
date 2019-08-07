require 'pry'
class PigLatinizer
    attr_reader :text

    def vowel?(letter)
        letter.scan(/[aAeEoOuUiI]/).length != 0
    end

    def piglatinize(text)
        each_word = text.split(" ")
        results = each_word.map{|word|

            if vowel?(word[0])
                word + "way"
            else
                # binding.pry
                split_word = word.split(/([aeoui].*)/)
                split_word[1] + split_word[0] + "ay"
            end
        }.join(" ")
    end
end