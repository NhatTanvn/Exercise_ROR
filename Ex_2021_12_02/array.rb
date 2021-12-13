  def find_sum (numbers, target_sum)
    length_numbers = numbers.length
    for i in 0..length_numbers -1 do 
        left = i + 1
        right = length_numbers - 1
        while right > left 
            sum = numbers[left] + numbers[right] + numbers[i]
          if sum - target_sum == 0 
            puts "sum: #{numbers[right]}, #{numbers[left]}, #{numbers[i]}"
              left+=1
              right-=1
              i+=1
          elsif sum - target_sum > 0
            right-=1
          else
            left+=1
          end
        end       
    end
  end
  numbers = [12, 3, 1, 2, -6, 5, -8, 6]
  target_sum = 0
find_sum(numbers, target_sum)

#chỉ tìm được 3 số: [-8, 3, 5]