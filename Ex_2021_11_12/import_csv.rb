require 'csv'
require 'pg'
require 'benchmark'

file_name = 'data.csv'
file_line = 500000
headers = ['name', 'email', 'phone', 'address','day_of_birth', 'profile']
profile =  "Like TV 100\", Some special charactor: \\ /' $ ~ & @ # ( ; \""

conn = PG.connect(
    dbname: "exercise3",
    user: "postgres"
 )

    def time_spent
        time = Benchmark.realtime do
            yield
        end
        puts "Thoi gian doc file csv va import vao psql la: #{time.round(2)}"
    end

        CSV.open(file_name,"w",write_headers: true, headers: headers) do |csv|
            for i in 1..file_line
                csv << ["Nguyen Van A #{i}","nguyenvana#{i}@gmail.com","0123456789","Ho Chi Minh City","2000/01/01",profile]
            end
        end

    time_spent do
       CSV.foreach(file_name) do |row|
            conn.exec("INSERT INTO employee (name, email, phone, address, day_of_birth, profile)
                VALUES('#{row[0]}','#{row[1]}','#{row[2]}','#{row[3]}','#{row[4]}','#{row[5]}') ");
       end
    end

# Phần code e trình bày gọn, biết sử dụng foreach, benchmark, yield là 1 điểm cộng
# db.exec, phần này a thấy e đang insert từng dòng vào trong db, tức là với 500k lines thì mình insert 500k lần về performance có thể bị ảnh hưởng
# do e hit vào db nhiều quá
# A suggest e là
#   1. sử dụng transaction -> e có thể tìm hiểu nó là gì
#   2. build ra 1 câu sql, nhưng khi nào đủ khoảng 5k lines (do e quyết định), rồi hẵn insert vào db. Như vậy sẽ giảm số lần e tương tác db ah
#

# Em trình bày trong 1 file vẫn ok, nhưng khi vào thực tế: e nên tách file ra để dễ quản lý. Vd: file về kết nối db, file để ghi ra file csv,
# file để import từ csv vào db -> mục đích là e sẽ dễ dàng quản lý và xử lý khi sau này có issues. Vd: không connect được db, thì e chỉ cần vào
# file quản lý cấu hình thôi, chứ kg cần scan hết trong 1 file tổng lớn. 
# User name và pass em nên để trong file cấu hình (connect) để bảo mật hơn

# file_line nên là hằng số nhé e. e có thể viết FILE_LINE = 500_000 để dễ đọc ah
