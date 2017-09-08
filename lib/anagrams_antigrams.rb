require('pry')

class Words
  def initialize (words)
    @words = words
  end

  def check_alphas (new_words)
    new_words = @words
    if @words =~ /^[a-zA-Z]+$/
      true
    else
      false
    end
  end

  def to_lowercase (new_words)
    new_words = @words
    @words.downcase
  end


end
