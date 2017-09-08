require('rspec')
require('anagram')

describe('anagram')do

    it("returns true if the inputs cinema and iceman")do
    expect(anagram(cinema, iceman)).to(eq(true))
    end
end