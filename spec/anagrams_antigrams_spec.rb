require('rspec')
require('anagrams_antigrams')
require('pry')

describe('#anagrams_antigrams') do
  it("Check if input has non-alphas") do
    alpha_words = Words.new("hello")
    expect(alpha_words.check_alphas("hello")).to(eq(true))
  end

  it("Change input to lowercase") do
    lowercase_words = Words.new("Hello")
    expect(lowercase_words.to_lowercase("Hello")).to(eq("hello"))
  end

  it("Check if input has vowels to confirm real words") do
    real_words = Words.new("Bird")
    expect(real_words.find_vowels("Bird")).to(eq("It's a real word!"))
  end
end
