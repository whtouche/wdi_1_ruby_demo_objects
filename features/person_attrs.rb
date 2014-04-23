require_relative '../lib/person'

# Lets give people a dob, age, years_to_live, expected_death_year
tom = Person.new('tom', 'dyer', '6-2-1957')

puts "Tom's dob is #{tom.dob}"
puts "Tom's age is #{tom.age}"
puts "Tom has #{tom.years_to_live} years to live"
puts "Tom is projected to die in the year #{tom.expected_death_year}"
