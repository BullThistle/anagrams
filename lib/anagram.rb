def anagram(str1, str2)
    str1 = str1.downcase
    str2 = str2.downcase

    arr1 = str1.split("")
    arr2 = str2.split("")

    arr1 = arr1.sort
    arr2 = arr2.sort

    if (arr1 <=> arr2) == 0
        return true
    else
        return false
    end
end
