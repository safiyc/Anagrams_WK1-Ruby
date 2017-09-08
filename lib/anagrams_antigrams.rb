require('pry')

class Words
  def initialize (words)
    @words = words
  end

  #check for letters
  def check_alphas (new_words)
    new_words = @words
    if @words =~ /^[a-zA-Z]+$/
      true
    else
      "Please enter only letters."
    end
  end

  #rule 2: change to lowercase
  def to_lowercase (new_words)
    new_words = @words
    @words.downcase
  end

  #rule 4: check for vowels to confirm are words
  def find_vowels (new_words)
    new_words = @words
    if @words =~ /[aeiou]/
      "It's a real word!"
    else
      "Please enter vowels to spell real words"
    end
  end
end
