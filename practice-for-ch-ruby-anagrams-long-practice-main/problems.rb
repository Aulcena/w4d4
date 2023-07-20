def anagram?(str_1, str_2)
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

p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true