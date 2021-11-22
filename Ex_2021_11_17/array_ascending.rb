numbers = 0
RAND_START = 1
RAND_END = 9
random_numbers = 0
array_numbers = Array.new
count = 1

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

for i in 0..LENGHT-1
    j = i + 1   
    tmp = array_numbers[i]
        puts "mang con tang #{count}: "
    for j in 0..LENGHT
        if tmp <= (array_numbers[j])
            tmp = array_numbers[j]
            print "#{tmp} "
        else
            break
        end
    end
    count+= 1
    i==j
    break if array_numbers.size - 1 == count
    puts ""
end
