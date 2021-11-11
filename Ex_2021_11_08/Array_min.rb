arr_n = Array.new 
puts "nhap -1 de ngung "
while arr_n.length < 100 do
    begin 
        puts "nhap so phan tu: "  
        n = Integer(gets)
        if n == -1 then break          
        elsif n >= 0 then arr_n.push(n)         
        else puts "nhap so phan tu: "    
            
        end
    end 

end
arr_numbers = arr_n.sort
min = arr_numbers[0]
puts "mang n: #{arr_numbers}"
puts "so nho nhat trong mang la #{min}"