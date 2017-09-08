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

    it("returns 'Please enter real words' if the inputs are cccu and iceman")do
        expect(anagram("cccu", "icemAn")).to(eq("Please enter real words"))
    end

    it("returns 'These words are antigrams' if the inputs hi and bye")do
        expect(anagram("hi", "bye")).to(eq("These words are antigrams"))
    end

    it("returns 'These words are neither anagrams or antigrams. Only 1 letter matches: h' if the inputs hi and hello")do
        expect(anagram("hi", "hello")).to(eq("These words are neither anagrams or antigrams. Only 1 letter matches: h"))
    end

    it("returns 'These words are anagrams' if the inputs Ci(nema) and !Icem#an!")do
        expect(anagram("Ci(nema)", "!Icem#an!")).to(eq("These words are anagrams"))
    end

    it("returns 'These words are neither anagrams or antigrams. 7 letters match: a, c, e, e, i, m, n' if the inputs Ci(nemaek) and !Icem#anu!")do
        expect(anagram("Ci(nemaek)", "!Icem#anu!")).to(eq("These words are neither anagrams or antigrams. 7 letters match: a, c, e, e, i, m, n"))
    end

    it("returns 'Hey! We don't like palindromes around here and there's no way we'll except one as an input!' if the inputs are madam and iceman")do
        expect(anagram("madam", "iceman")).to(eq("Hey! We don't like palindromes around here and there's no way we'll except one as an input!"))
    end

end