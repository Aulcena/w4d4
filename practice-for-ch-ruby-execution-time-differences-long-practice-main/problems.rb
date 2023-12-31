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

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

#phase 1
# def largest_contiguous_sub_sum(array)

#     new_arr = [] #1

#     i = 0 #1
#     #n^2
#     while i < array.length # n
#         j = i # 1
#         while j < array.length # n

#            new_arr << array[i..j] #1

#             j += 1 #1

#         end

#         i += 1 #1

#     end

#     max_sum = 0 # 1
#     #n
#     new_arr.each do |sub_array| # n

#         if sub_array.sum > max_sum # 1

#             max_sum = sub_array.sum #1

#         end

#     end

#     return max_sum #1

# end

def largest_contiguous_sub_sum(array)
    largest_sum = 0
    current_sum = 0
    i =0
    while i < array.length
        if current_sum < 0
            current_sum =0
        end

        current_sum+=array[i]
        if current_sum > largest_sum
            largest_sum = current_sum
        end

        i+=1
    end
    largest_sum
end

# def largest_contiguous_sub_sum(array)
#     left =0
#     right = 0
#     cur_sum =0
#     largest_sum =0

#     while left < array.length
#         right = left
#         while cur_sum >0
#             cur_sum += array[right]
#             if cur_sum > largest_sum
#                 largest_sum = cur_sum
#             end
#             right +=1
#         end
#         left +=1
#     end
#     largest_sum
# end

list = [5, 3, -7]
p largest_contiguous_sub_sum(list) # => 8

# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7

