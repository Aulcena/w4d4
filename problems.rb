#Phase 1
def my_min(arr)
    min = 0
    arr.each do |ele1|
        arr.each do |ele2|
            if  ele1 < ele2 && ele1 < min
                min = ele1
            end
        end
    end
    min
end


#Phase 2
# def my_min(arr)
#     i = arr[0]
#     arr.each do |ele|
#         if ele < i
#             i = ele
#         end
#     end
#     i
# end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5