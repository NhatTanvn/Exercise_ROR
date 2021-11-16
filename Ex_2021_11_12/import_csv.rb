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

