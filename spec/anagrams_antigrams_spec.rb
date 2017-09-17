require('rspec')
require('anagrams_antigrams')
require('pry')

describe('#anagrams_antigrams') do
  it("removes spaces and special characters") do
   word1 = Word.new("rub !y")
   word2 = Word.new("b#ury")
   expect(word1.input_value).to(eq("ruby"))
   expect(word2.input_value).to(eq("bury"))
 end

 it("changes all letters to lowercase") do
   word1 = Word.new("Ruby")
   word2 = Word.new("bURy")
   expect(word1.input_value).to(eq("ruby"))
   expect(word2.input_value).to(eq("bury"))
 end
end
