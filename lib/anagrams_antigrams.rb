require('pry')

class Words
  def initialize (word1, word2)
    @word1 = word1.gsub(/[^a-zA-Z]/, '')
    @word2 = word2.gsub(/[^a-zA-Z]/, '')
    @words_array = []
  end

  def confirm_anagrams
    if @word1 =~ /[aeiouy]/ && @word2 =~ /[aeiouy]/
      return @words_array.push(@word1, @word2)
    else
      return "These words are neither anagrams or antigrams because they are not real words. Real words have vowels."
    end
  end

#   def find_anagrams (new_words)
#     new_words = @words
#     if ((@words =~ /^[a-zA-Z]+$/) & (@words =~ /[aeiou]/))
#       return @words.downcase.chars.sort.join
#     else
#       "Please enter real words."
#     end
#   end
# end

  # def check_alphas (new_words)
  #   new_words = @words
  #   if @words =~ /^[a-zA-Z]+$/
  #     true
  #   else
  #     "Please enter only letters."
  #   end
  # end
  #
  # def to_lowercase (new_words)
  #   new_words = @words
  #   @words.downcase
  # end
  #
  # def find_vowels (new_words)
  #   new_words = @words
  #   if @words =~ /[aeiou]/
  #     "It's a real word!"
  #   else
  #     "Please include vowels to make words real."
  #   end
  # end
  #
  # def check_anagrams (new_words)
  #   new_words.chars.sort.join == @words.chars.sort.join
  # end

  #combine above methods
  # def methods_combined (new_words)
  #   new_words = @words
  #   check_alphas(new_words) + to_lowercase(new_words) + find_vowels(new_words) + check_anagrams(new_words)
  # end
end
