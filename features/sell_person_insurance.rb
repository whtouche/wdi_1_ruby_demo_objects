require '../lib/person'

# Determine if we should sell this person Life Insurance
# Only if they have 20 yrs to live.

jack = Person.new('jack', 'sprat', '4-22-1990')
puts "Jack is #{jack.age} years old"
puts "He is expected to live until the year #{jack.expected_death_year}"

puts "Sell jack life insurance: #{jack.give_insurance?}"


jill = Person.new('jill', 'sprat', '1-10-1953')
puts "Jill is #{jill.age} years old"
puts "He is expected to live until the year #{jill.expected_death_year}"

puts "Sell jill life insurance: #{jill.give_insurance?}"
