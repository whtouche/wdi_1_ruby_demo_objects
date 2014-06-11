# This will "insert" the contents of the person.rb here
require_relative '../lib/person.rb'

tom = Person.new('Tom', 'Dyer')
jill = Person.new('Jill', 'Stein')

puts "Tom is #{tom}"
puts "Jill is #{jill}"

puts "Tom is #{tom.inspect}"

# Waaa, cant' access instance variables.
# puts "Tom's last name is #{tom.last_name}"

puts "Tom's full name is #{tom.full_name}"

# Remember no access to tom's instance variables
# Until we provide getter methods!!
puts "Tom's first name is #{tom.first_name}"
puts "Tom's last name is #{tom.last_name}"

puts "Jill's last name is #{jill.last_name}"
# Now we can change a person's last name, we have a setter!
# jill.last_name('Smith')

# Oh, this doesn't worko because we're calling the last_name getter with
# and argument.
puts "Jill's last name is #{jill.last_name}"

# Who's going to fix this for me?
jill.last_name=('Smith')
puts "Jill's last name is #{jill.full_name}"

# YAGNI. You aint gonna need it!
