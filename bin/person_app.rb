# This will "insert" the contents of the person.rb here
require_relative '../lib/person.rb'

tom = Person.new('Tom', 'Dyer', '06-02-1962')
jill = Person.new('Jill', 'Stein', '05-13-1987')

puts "tom's first name is #{tom.first_name}" # Calling the Getter method
puts "jill's last name is #{jill.last_name}" # Calling the Getter method

# Use setter method to change tom's last name
# Works even with parentheses
tom.last_name = "Jones"

# Show me tom's last name
puts "tom's last name is #{tom.last_name}"

# Shows address for the object tom
puts tom

# .inspect returns class name, instance variables (good for debugging)
puts tom.inspect

puts "tom's full name is #{tom.full_name}"
puts "tom's age is #{tom.age}"

tom.current_smoker = true
tom.married = true
msg = tom.give_insurance? ? "should" : "should not"
puts "tom #{msg} get insured"

