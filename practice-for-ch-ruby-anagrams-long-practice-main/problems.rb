def first_anagram?(str_1, str_2)
    hs = Hash.new(0)
    
    str_1.each_char do |char|
        hs[char] += 1
    end

    str_2.each_char do |char|
        hs[char] -= 1
        return false if hs[char] < 0
    end

    true
    
end



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

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true

# Use bubble-sort algorithm

def third_anagram?(str_1,str_2)
    alphabet = ("a".."z").to_a

    i = 0 

    sorted = false

    while !sorted

        sorted = true

        str[i]
    end

end