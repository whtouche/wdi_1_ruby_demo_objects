require_relative '../lib/insured_person.rb'

tom = InsuredPerson.new('Tom', 'Dyer', '06-02-1962')
jill = InsuredPerson.new('Jill', 'Stein', '05-13-1987')

puts "tom's first name is #{tom.first_name}" # Calling the Getter method
puts "jill's last name is #{jill.last_name}" # Calling the Getter method

msg = tom.give_insurance? ? "should" : "should not"
puts "tom #{msg} get insured"

tom.current_smoker = true
msg = tom.give_insurance? ? "should" : "should not"
tom.married = true

jack = InsuredPerson.new('Jack', 'Sprat', '07-13-1987')
puts jack.inspect
