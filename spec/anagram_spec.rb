require('rspec')
require('anagram')

describe ("anagram") do

    it("returns 'These words are anagrams' if the inputs are cinema and iceman")do
        expect(anagram("cinema", "iceman")).to(eq("These words are anagrams"))
    end

    it("returns 'These words are anagrams' if the inputs are ciNema and icemAn")do
        expect(anagram("ciNema", "icemAn")).to(eq("These words are anagrams"))
    end

    it("returns 'Please enter real words' if the inputs are fdpwg and iceman")do
        expect(anagram("fdpwg", "icemAn")).to(eq("Please enter real words"))
    end

    it("returns 'These words are antigrams' if the inputs hi and bye")do
        expect(anagram("hi", "bye")).to(eq("These words are antigrams"))
    end

    it("returns 'These words are neither anagrams or antigrams' if the inputs hi and hello")do
        expect(anagram("hi", "hello")).to(eq("These words are neither anagrams or antigrams"))
    end

    it("returns 'These words are anagrams' if the inputs hi and hello")do
        expect(anagram("Ci(nema)", "!Icem#an!")).to(eq("These words are anagrams"))
    end
end