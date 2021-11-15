require 'csv'
require 'pg'

file_name = 'data.csv'
    headers = ['name', 'email', 'phone', 'address','day_of_birth', 'profile']
    CSV.open(file_name,"w",write_headers: true, headers: headers) do |csv|
        for i in 1..50000
            csv << ["Nguyen Van A #{i}","nguyenvana#{i}@gmail.com","0123456789","Ho Chi Minh City","2000/01/01","Like TV 100\", Some special charactor: \ / ' $ ~ & @ # ( ; \""]
        end
    end