# Your code goes here!
class Anagram
  attr_accessor :word, :word_array, :matched_words

  def initialize(word)
    @word = word.chars.sort.join
  end

  def match(word_array)
    @word_array = word_array
    @matched_words = []

    @word_array.each_with_index do |word, i|
        if word.chars.sort.join == @word
          @matched_words << word
        end
    end

    @matched_words

  end

end
