require '../lib/person'

# Research says that getting married will add 5 years to you life.

# Add marriage as factor to consider
# when calculating wheter to sell person insurance.
jack = Person.new('jack', 'sprat', '4-22-1990')
jack.married = true
puts "Jack is #{jack.age} years old"
puts "He is expected to live until the year #{jack.expected_death_year}"

puts "Sell jack life insurance: #{jack.give_insurance?}"


jill = Person.new('jill', 'sprat', '1-10-1953')

jill.married = true
puts "Jill is #{jill.age} years old"
puts "He is expected to live until the year #{jill.expected_death_year}"

puts "Sell jill life insurance: #{jill.give_insurance?}"

puts "You can now sell jill life insurance!!"
