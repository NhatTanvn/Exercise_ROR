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
# Code e viết ok, kg dùng include? là một điểm cộng 
# Line 10, lenght quá chung chung, e có thể viết là numbers_a.length luôn mà kg cần khai báo biến length
# Line 13, 16 trong if, a thấy nó giống nhau, e có thể move ra ngoài. (Những phần nào chung cho cả if và else, mình có thể xem xét để move ra ngoài)
# Hàm check_sub_array của e có thể viết gọn lại trong 1 dòng là: sub_a == numbers_b thôi nhé e
