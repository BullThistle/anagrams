require('rspec')
require('anagram')

describe ("anagram") do

    it("returns true if the inputs cinema and iceman")do
        expect(anagram("cinema", "iceman")).to(eq(true))
    end

    it("returns true if the inputs cinema and iceman")do
        expect(anagram("ciNema", "icemAn")).to(eq(true))
    end

    it("returns true if the inputs cinema and iceman")do
        expect(anagram("fdpwg", "icemAn")).to(eq("Please enter real words"))
    end
end