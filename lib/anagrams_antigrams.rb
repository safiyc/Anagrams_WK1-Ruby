require('pry')

class Words
  def initialize (words)
    @words = words
  end   # end 'initialize'
# binding.pry
  def only_alpha?(initial_words)   # rule6
    initial_words = @words
    if initial_words =~ /^[a-zA-Z]+$/
      return true
    else
      return false
    end
  end
end
