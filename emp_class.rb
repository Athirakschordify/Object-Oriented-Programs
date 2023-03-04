class Employee
	def initialize(name1,salary,days)
		@name=name1
		@salary=salary
		@days=days
	end
	def getdata
	  puts "Employee Name is #{@name}"
	  puts "Employee salary is #{@salary}"
	end  	
end 
class Manager < Employee
	def getdata
		super
    end 
    def calculate_bonus
     bonus=@salary/@days
     b=(bonus / @salary * 100).round(1)
     puts "Bonus is #{b}"
end 
m = Manager.new("athira",50000.0,20) 
m.getdata
m.calculate_bonus
end
