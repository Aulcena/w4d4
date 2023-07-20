def first_anagram?(str_1, str_2)

    str_1_arr = str_1.split("")
    str_2_arr = str_2.split("")

    str_1_arr.permutation.to_a.include?(str_2_arr)


end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true






# def first_anagram?(str_1, str_2)
#     hs = Hash.new(0)
    
#     str_1.each_char do |char|
#         hs[char] += 1
#     end

#     str_2.each_char do |char|
#         hs[char] -= 1
#         return false if hs[char] < 0
#     end

#     true
    
# end



def second_anagram?(str_1, str_2)
    str_1.each_char do |char|
        if str_2.include?(char)
            found = str_2.index(char)
            str_2 =  str_2[0...found] + str_2[found+1..-1]
        else
            return false
        end
    end
    str_2.empty?
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

# Use bubble-sort algorithm
def third_anagram?(str_1,str_2)

    str_1 = bubble_sort(str_1)
    str_2 = bubble_sort(str_2)

    str_1 == str_2
    
end

def bubble_sort(str)
    alphabet = ("a".."z").to_a
    sorted = false

    while !sorted
        sorted = true
        j =0

        while j < (str.length) -1
            if alphabet.index(str[j]) > alphabet.index(str[j+1])
                str[j],str[j+1] = str[j+1],str[j]
                sorted = false
            end
            j+=1
        end
    end
    str
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true