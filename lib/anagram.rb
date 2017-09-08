class Word
    def initialize(word)
        @word = word
    end
    def word_to_array
        str = @word.gsub(/\W+/, '')
        str = str.downcase
        arr = str.split("")
        arr = arr.sort
    end

    def is_palindrome
        str_rev = @word.reverse
        if @word == str_rev
            return true
        else
            return false
        end
    end
end

def is_word(arr)
    flag = 0
    temp1 = arr[0]
    temp2 = arr[1]
    for i in 0..arr.length do
        if (arr[i] == 'a' || arr[i] ==  'e' || arr[i] ==  'i' || arr[i] ==  'o' || arr[i] ==  'u' || arr[i] ==  'y')
            flag = 1
        end
    end
    for i in 2..arr.length do
        if ((temp1 == temp2) && (temp2 == arr[i]))
            flag = 0
            puts "flag"
            puts flag
        end
        temp1 = temp2
        temp2 = arr[i]
    end
    flag
end

def is_antigram(arr1, arr2)
    flag = 0
    for i in 0..(arr1.length - 1) do
        for j in 0..(arr2.length - 1) do
            if arr1[i] == arr2[j]
                flag = 1;
            end
        end
    end
    flag
end

def letters_in_common(arr1, arr2)
    letters = Array.new
    for i in 0..(arr1.length - 1) do
        for j in 0..(arr2.length - 1) do
            if arr1[i] == arr2[j]
                letters.push(arr1[i])
            end
        end
    end
    letters
end

def out(arr1, arr2, word1, word2)
    if (is_word(arr1) == 0 || is_word(arr2) == 0)
        return "Please enter real words"
    elsif ((word1.is_palindrome == true) || (word2.is_palindrome == true))
        return "Hey! We don't like palindromes around here and there's no way we'll except one as an input!"
    elsif (arr1 <=> arr2) == 0
        return "These words are anagrams"
    elsif is_antigram(arr1, arr2) == 0
        return "These words are antigrams"
    else
        letters = letters_in_common(arr1, arr2)
        number = letters.length.to_s
        letters = letters.join
        letters = letters.gsub('', ', ')
        lettersarr = Array.new
        for i in 2..(letters.length - 3)
            lettersarr.push(letters[i])
        end
        lettersarr = lettersarr.join
        if number == "1"
            return "These words are neither anagrams or antigrams. Only " + number + " letter matches: " + lettersarr
        else
            return "These words are neither anagrams or antigrams. " + number + " letters match: " + lettersarr
        end
    end
end

def anagram(str1, str2)
    word1 = Word.new(str1)
    word2 = Word.new(str2)

    arr1 = word1.word_to_array
    arr2 = word2.word_to_array
    output = out(arr1, arr2, word1, word2)
end

anagram("madam", "iceman")