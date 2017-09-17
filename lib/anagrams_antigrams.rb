class Word
  def initialize (wordx)
    @word = wordx
  end

  def input_value
    @word.gsub(/[^a-zA-Z]/, '').downcase
  end

  def is_word
    if input_value =~ /[aeiou]/
      return true
    else
      return false
    end
  end

  def sort_word
      @word.split("").sort.join
  end

  def reverse_word
      @word.reverse
  end

  def confirm_anagrams (wordb)
    if self.is_word == true && wordb.is_word == true
      if self.sort_word == wordb.sort_word
        if self.input_value == wordb.reverse_word
          return "These words are anagrams and they are palindromes."
        else
          return "These words are anagrams."
        end
      else
        return "These words are antigrams."
      end
    else
      return "One or two of these inputs are not real words, which have vowels. Anagrams and antigrams are real words."
    end
  end
end
