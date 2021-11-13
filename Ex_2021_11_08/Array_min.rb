arr_n = Array.new # biến chứa nhiều phần tử nên là số nhiều
puts "nhap -1 de ngung "
while arr_n.length < 100 do
    begin 
        puts "nhap so phan tu: "  
        n = Integer(gets) # tên biến cần đặt có ý nghĩa hơn
        if n == -1 then break # không cần then, nên xuống dòng cho dễ nhin         
        elsif n >= 0 then arr_n.push(n)         
        else puts "nhap so phan tu: " #nên xuống dòng cho dễ nhin
            
        end
    end 

end
arr_numbers = arr_n.sort
min = arr_numbers[0]
puts "mang n: #{arr_numbers}"
puts "so nho nhat trong mang la #{min}"

# Chương trình e viết rất ngắn gọn,  
# Một lỗi nghiêm trọng là khi user input không đúng thì chương trình của e thoát ra luôn, và không yêu cầu nhập lại
# Vd: 
# nhap -1 de ngung 
# nhap so phan tu: 
# abcabc
# Traceback (most recent call last):
#     1: from main.rb:6:in `<main>'
# main.rb:6:in `Integer': invalid value for Integer(): "abcabc\n" (ArgumentError)
