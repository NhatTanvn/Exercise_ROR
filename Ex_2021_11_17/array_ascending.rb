numbers = 0
RAND_START = 1
RAND_END = 9
random_numbers = 0
array_numbers = Array.new
count = 0 

while true do         
    begin
        puts "Nhap n so phan tu: "
        numbers = Integer(gets)
    rescue
        puts "Vui long nhap so!"
        retry
    end
    if numbers <= 99 
        for i in 1..numbers
            random_numbers = Random.rand(RAND_START...RAND_END)
            array_numbers.push(random_numbers)
        end
    else
        break    
    end
    break
end
puts "Day so la: #{array_numbers}"
LENGHT = array_numbers.length

for i in 0..LENGHT
    while array_numbers[i] <= array_numbers[i + 1] do
        puts "mang con tang #{count}"
        if count == 0 
            print "#{array_numbers[i]} , #{array_numbers[i+1]}"
            puts ""
        else
            print array_numbers[i + 1] 
            puts ""
        end      
        i += 1
        count += 1        
    end
end