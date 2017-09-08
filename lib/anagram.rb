def string_to_array(str)
    str = str.gsub(/\W+/, '')
    str = str.downcase
    arr = str.split("")
    arr = arr.sort
end

def is_word(arr)
    flag = 0
    for i in 0..arr.length do
        if (arr[i] == 'a' || arr[i] ==  'e' || arr[i] ==  'i' || arr[i] ==  'o' || arr[i] ==  'u' || arr[i] ==  'y')
            flag = 1
        end
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

def anagram(str1, str2)
    arr1 = string_to_array(str1)
    arr2 = string_to_array(str2)

    if (is_word(arr1) == 0 || is_word(arr2) == 0)
        return "Please enter real words"
    elsif (arr1 <=> arr2) == 0
        return "These words are anagrams"
    elsif is_antigram(arr1, arr2) == 0
        return "These words are antigrams"
    else
        return "These words are neither anagrams or antigrams"
    end
end

def call
    puts "enter1"
    str1 = gets.chomp

    puts "enter2"
    str2 = gets.chomp

    anagram(str1, str2)
end

call