def anagram(str1, str2)
    arr1 = str1.split("")
    arr2 = str2.split("")

    arr1 = arr1.sort
    arr2 = arr2.sort

    if (arr1 <=> arr2) == 0
        puts "true"
        return true
    else
        puts "false"
        return false
    end
end

puts "Enter a string"
str1 = gets.chomp

puts "Enter another string"
str2 = gets.chomp

anagram(str1, str2)