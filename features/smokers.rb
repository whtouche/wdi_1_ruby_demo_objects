require '../lib/person'

# Research says that smokers loose 7 years of thier life

jack = Person.new('jack', 'sprat', '4-22-1990')
jack.smokes
puts "Jack is #{jack.age} years old"
puts "He is expected to live until the year #{jack.expected_death_year}"
puts "Sell jack life insurance: #{jack.give_insurance?}"

jill = Person.new('jill', 'sprat', '1-10-1953')

jill.married = true
jill.smokes = true
puts "Jill is #{jill.age} years old"
puts "He is expected to live until the year #{jill.expected_death_year}"

puts "Sell jill life insurance: #{jill.give_insurance?}"

puts "You can now sell jill life insurance!!"
puts "Nope, she smokes so it more than offets the fact that shes married!"
puts "You'd smoke too if you were married!"

puts "Can I get married 5 times to add 25 years to my life??"
