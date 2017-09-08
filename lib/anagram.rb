def anagram(str1, str2)
    #Downcases str1 and str2
    str1 = str1.gsub(/\W+/, '')
    str2 = str2.gsub(/\W+/, '')

    str1 = str1.downcase
    str2 = str2.downcase

    #Splits str1 and str2 in to arrays
    arr1 = str1.split("")
    arr2 = str2.split("")

    puts arr1
    puts arr2

    #Finds if there are vowels in the arrays
    flag1 = 0
    flag2 = 0

    for i in 0..arr1.length do
        if (arr1[i] == 'a' || arr1[i] ==  'e' || arr1[i] ==  'i' || arr1[i] ==  'o' || arr1[i] ==  'u' || arr1[i] ==  'y')
            flag1 = 1
        end
    end

    for i in 0..arr2.length do
        if (arr2[i] == 'a' || arr2[i] ==  'e' || arr2[i] ==  'i' || arr2[i] ==  'o' || arr2[i] ==  'u' || arr2[i] ==  'y')
            flag2 = 1
        end
    end

    if (flag1 == 0 || flag2 == 0)
        puts "1out"
        return "Please enter real words"
    end

    #Sorts arr1 and arr2
    arr1 = arr1.sort
    arr2 = arr2.sort

    #Returns true if arr1 is the same as arr2
    if (arr1 <=> arr2) == 0
        puts "2out"
        return "These words are anagrams"
    else
        flag = 0
        for i in 0..(arr1.length - 1) do
            for j in 0..(arr2.length - 1) do
                if arr1[i] == arr2[j]
                    flag = 1;
                    puts arr1[i]
                    puts arr2[j]
                    # puts arr1
                    # puts arr2
                end
            end
        end
        if flag == 0
            puts "3out"
            return "These words are antigrams"
        else
            puts "4out"
            return "These words are neither anagrams or antigrams"
        end
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