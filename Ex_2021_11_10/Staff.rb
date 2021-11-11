class Staff
  
    def getInfo
        puts "================="
        puts "Nhap so thu tu "
        @stt = Integer(gets)
        puts "Nhap ten"
        @name = String(gets)
        puts "Nhap luong 1 ngay"
        @salary = Integer(gets)
        puts "Nhap nam sinh (vd:2010)"
        @dateOfBirth = Integer(gets)
        puts "Nhap chuc vu"
        @position = String(gets)  
        puts "Nhap so ngay lam viec"
        @workingDays = Integer(gets)
        puts "================="
    end
    def getAge
        now = Time.now
        age = now.year - @dateOfBirth
        puts "Tuoi cua nhan vien la: #{age}"
    end
    
    def getTotalSalary
        totalSalary = @salary * @workingDays
        puts "Tong luong cua nhan vien la: #{totalSalary} $"
    end
    def showInfo
        puts "Thong tin chi tiet nhan vien"
        puts "Stt: #{@stt}, Ten: #{@name}"
        puts "Nam sinh: #{@dateOfBirth}, Luong 1 ngay: #{@salary}$,Chuc vu: #{@position}"
    end
     
end

staff = Staff.new 
staff.getInfo
staff.showInfo
staff.getAge
staff.getTotalSalary