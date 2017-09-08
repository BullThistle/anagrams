def anagram(str1, str2)
    #Downcases str1 and str2
    str1 = str1.downcase
    str2 = str2.downcase

    #Splits str1 and str2 in to arrays
    arr1 = str1.split("")
    arr2 = str2.split("")

    #Finds if there are vowels in the arrays
    flag1 = 0
    flag2 = 0
    for i in 0..arr1.length do
        if arr1[i] == ('a' || 'e' || 'i' || 'o' || 'u')
            flag1 = 1
            puts "made it"
        end
    end

    for i in 0..arr2.length do
        if arr2[i] == ('a' || 'e' || 'i' || 'o' || 'u')
            flag2 = 1
        end
    end

    if flag1 == 0 || flag2 == 0
        return "Please enter real words"
    end

    #Sorts arr1 and arr2
    arr1 = arr1.sort
    arr2 = arr2.sort

    #Returns true if arr1 is the same as arr2
    if (arr1 <=> arr2) == 0
        return true
    else
        return false
    end
end

# puts "enter1"
# str1 = gets.chomp

# puts "enter2"
# str2 = gets.chomp

# anagram(str1, str2)
