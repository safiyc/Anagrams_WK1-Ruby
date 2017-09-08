require('rspec')
require('anagrams_antigrams')
require('pry')

describe('#anagrams_antigrams') do
  it("Check if string has non-alphas") do
    alpha_words = Words.new("hello")
    expect(alpha_words.check_alphas("hello")).to(eq(true))
  end

  it("Change all letter casing to lowercase") do
    lowercase_words = Words.new("Hello")
    expect(lowercase_words.to_lowercase("Hello")).to(eq("hello"))
  end

end
