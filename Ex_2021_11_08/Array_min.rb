arr_numbers = Array.new 
puts "nhap -1 de ngung "
while arr_numbers.length < 100 do
    begin 
        puts "nhap so phan tu: "  
        number = Integer(gets)
    rescue     
        puts "Vui long nhap so!" 
        retry
    end 
    if number == -1 
         break          
    elsif number >= 0
         arr_numbers.push(number)         
    else 
        puts "nhap so phan tu: "          
    end

end
array_min = arr_numbers.min
puts "mang n: #{arr_numbers}"
puts "so nho nhat trong mang la #{array_min}"
