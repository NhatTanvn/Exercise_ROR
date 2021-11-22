numbers = [3, 5, -4, 8, 11, 1, -1, 6 , 7]
target_sum = 10 
i = 0
j = numbers.length() -1 

while i < j
    cur_sum = (numbers[i]) + (numbers[j])
    if cur_sum == target_sum
        puts "Output: #{numbers[i]}, #{numbers[j]}"
        i = i + 1
        j = j - 1
    elsif  cur_sum < target_sum
        i = i+1
    elsif
        j = j-1
    else
        puts "khong tim thay"
    end
   
end