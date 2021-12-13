  def find_sum (numbers, target_sum, sum_array)
    length_numbers = numbers.length
   for i in 0..length_numbers -1 do 
       left = i + 1
       right = length_numbers - 1
       while right > left 
           sum = numbers[right] + numbers[left] + numbers[i]
         if sum - target_sum == 0 
           sum_array.push("[#{numbers[right]},#{numbers[right]},#{numbers[right]}]")
             left = left + 1
             right = right -1
             i+=1
         elsif sum - target_sum > 0
           right = right -1
         else
           left = left + 1
         end
       end       
   end
 end
 numbers = [12, 3, 1, 2, -6, 5, -8, 6]
 target_sum = 0
 sum_array = []
find_sum(numbers, target_sum, sum_array)
puts sum_array

#chỉ tìm được 3 số: [-8, 3, 5]