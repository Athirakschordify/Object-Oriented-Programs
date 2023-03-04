# 5.Once upon a time, there was a software company that specialized in developing complex applications for the healthcare industry. The company had a class called Patient that stored information about patients in a hospital, such as their name, age, and medical history. The class had private, protected, and public methods to ensure that the data was secure and could only be accessed in appropriate ways.

# The company later decided to develop another application for the healthcare industry that also needed to store patient information, but with additional functionality. They created a new class called EmergencyPatient that inherited from the Patient class. Using EmergencyPatient class display all patient details

class Patient

	def call
		ages
		medical_history
	end	
	
	def names
		puts "enter name"
		n=gets.chomp
		@name=n
	end
	private
	def ages
		puts "enter age"
		a=gets.chomp.to_i
		@age=a
		
	end
	protected
	def medical_history
		puts "enter medical history"
		m=gets.chomp
		@medical_history=m
	end
	
	
end
class EmergencyPatient < Patient
	def display
		super
		puts " name is #{@name}"
		puts "age is #{@age}"
		puts "medical history is #{@medical_history}"
	end
end
e = EmergencyPatient.new
e.names
e.call
e.display
