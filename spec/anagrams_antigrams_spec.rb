require('rspec')
require('anagrams_antigrams')
require('pry')

describe('#anagrams_antigrams') do
  it("checks for vowels to confirm if real words") do
    user_words = Words.new("rbd", "dbr")
    expect(user_words.confirm_anagrams()).to(eq("These words are neither anagrams or antigrams because they are not real words. Real words have vowels."))
  end

  it("removes spaces and special characters") do
    user_words = Words.new("ru !by", "RU?B!y")
    expect(user_words.confirm_anagrams()).to(eq(["ruby", "RUBy"]))
  end
end

# describe('#anagrams_antigrams') do
#   it("Check if input has non-alphas") do
#     alpha_words = Words.new("Hello")
#     expect(alpha_words.check_alphas("Hello")).to(eq(true))
#   end
#
#   it("Change input to lowercase") do
#     lowercase_words = Words.new("Hello")
#     expect(lowercase_words.to_lowercase("Hello")).to(eq("hello"))
#   end
#
#   it("Check if input has vowels to confirm real words") do
#     real_words = Words.new("bird")
#     expect(real_words.find_vowels("bird")).to(eq("It's a real word!"))
#   end
#
#   it("Sort input into an anagram") do
#     anagram_words = Words.new("racecar")
#     expect(anagram_words.check_anagrams("racecar")).to(eq("racecar"))
#   end
# end
