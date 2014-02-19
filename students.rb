class School
	attr_accessor :students, :teachers

	def initialize
		@students = []
		@teachers = []
	end
end

class Human
	attr_accessor :name

	def initialize(name, age)
		@name = name
	end
end

# Student inherits all attributes and methods from Human
class Student < Human
	attr_accessor :gpa

	# Overloads initialize method from Human with a new one
	def initialize(name, age, gpa)
		# super calls the initialize method of parent class
		super(name, age) # needs to be one first line of initialize
		@gpa = gpa
	end
end

class Teacher < Human
	attr_accessor :students
	def initialize(name, age, salary)
		super(name, age)
		@salary = salary
	end
end

my_school = School.new
my_school.students << Student.new("Sam", 14, 3.0)
my_school.teachers << Teacher.new("Kelly", 30, 30000)

puts my_school.students[0].name
puts my_school.teachers.first.name
