require('rspec')
require('anagrams_antigrams')
require('pry')

describe('#anagrams_antigrams') do
  it("checks for vowels to confirm if real words") do
    word1 = Word.new("ruby")
    word2 = Word.new("rbd")
    expect(word1.confirm_anagrams(word2)).to(eq("One or two of these inputs are not real words. Real words have vowels."))
  end
end
