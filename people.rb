class Person
	attr_accessor :name

	def message
		"Hi, my name is #{@name}"
	end

	def initialize(name)
		@name = name
	end
end


class Student < Person
	def learn
		puts "I get it!\n"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object!\n"
	end
end

# Prompts for Student/Instructor

puts "What is the name of your instructor?"
instructor_name = gets.chomp
instructor = Instructor.new(instructor_name)
puts instructor.message

puts "What is the name of the student?"
student_name = gets.chomp
student = Student.new(student_name)
puts student.message

instructor.teach
student.teach

# The reason why this does not work is because 
# the class method of "teach" is only defined within
# the instructor class method and not within the "Student" class method





