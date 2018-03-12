# Your code goes here!
class Anagram
  attr_accessor :word, :word_array

  def initialize(word)
    @word = word.chars.sort.join
  end

  def match(word_array)
    @index = nil
    @word_array = word_array

    @word_array.each_with_index do |word, i|
        if word.chars.sort.join == @word
          @index = i
        end
    end

    @word_array[0]

  end

end
