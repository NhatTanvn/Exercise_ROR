arr_numbers = Array.new 
STOP_SIGNAL = -1
puts "nhap -1 de ngung "
while arr_numbers.length < 100 do
    begin 
        puts "nhap so phan tu: "      
         number = Integer(gets)       
    rescue     
        puts "Vui long nhap so!" 
        retry
    end 
    if number == STOP_SIGNAL 
         break          
    elsif number >= 0
         arr_numbers.push(number)         
    else 
        puts "Vui long nhap so lon hon 0!"          
    end
end
array_min = arr_numbers.min
puts "Day so nguyen la: #{arr_numbers}"
puts "so nho nhat trong mang la #{array_min}"

