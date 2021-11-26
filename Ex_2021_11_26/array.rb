numbers_a = [5, 1, 22, 26, 6, -1, 10, 8]
numbers_b = [1, 6, -1, 10]
sub_a = []

def find_sub_array(numbers_a, numbers_b, sub_a)
    i = 0 
    j = 0
    length = numbers_a.length()
    
    while i < length
        if numbers_a[i] == numbers_b[j] 
            sub_a.push(numbers_a[i])
            i+=1
            j+=1
        else
            i+=1
        end
    end
end

def check_sub_array(numbers_b, sub_a)
    if sub_a == numbers_b
        puts "True"
    else
        puts "False"
    end
end

find_sub_array(numbers_a, numbers_b, sub_a)
check_sub_array(numbers_b, sub_a)