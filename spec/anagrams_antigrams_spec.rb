require('rspec')
require('anagrams_antigrams')
require('pry')

describe('#anagrams_antigrams') do
  it("Check if string has non-alphas") do
    user_words = Words.new("hello")

    expect(user_words.only_alpha?("hello")).to(eq(false))
  end

end # end 'describe'
