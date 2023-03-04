# 1. A company has two types of employees: regular employees and managers. All employees have a name and a salary, but managers also have a bonus percentage that is added to their salary.

# Write a program that creates two classes, Employee and Manager, where Manager inherits from Employee. The Employee class should have methods to get and set the name and salary, and the Manager class should have an additional method to get and set the bonus percentage.

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
