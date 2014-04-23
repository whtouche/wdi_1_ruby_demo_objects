require 'pry'
require_relative '../lib/person.rb'
require_relative '../lib/insurance_company.rb'

tom = Person.new('tom', 'Dyer', '6-2-1957')
jill = Person.new('jill', 'Stein', '4-4-1952')


puts "jill is #{jill}"
puts "jill is #{jill.inspect}"
puts
# puts "jill's name is #{jill.first_name}"
puts "jill's name is #{jill.full_name}"

puts "jill's first name is #{jill.first_name}"
puts "jill's last name is #{jill.last_name}"

jill.last_name = "Smith"
jill.last_name=("Jones")
puts "jill's last name is #{jill.last_name}"

puts "jill's DOB is #{jill.dob}"
puts "jill's age is  #{jill.age}"
puts "jill's death year is  #{jill.expected_death_year}"
puts "Sell jill insurance? #{jill.give_insurance?}"


jack = Person.new('jack', 'sprat', '2-21-1990')
puts "jack's age is  #{jack.age}"
puts "jack's death year is  #{jack.expected_death_year}"
puts "Sell jack insurance? #{jack.give_insurance?}"


jill.married = true
puts "jill's death year is  #{jill.expected_death_year}"
puts "Sell jill insurance? #{jill.give_insurance?}"


# Lets create an Insurance company

aetna = InsuranceCompany.new("Aetna")
puts "Insurance Company is #{aetna.name}"


aetna.add_client(jill)
aetna.add_client(tom)
aetna.add_client(jack)

aetna.clients.each do |client|
  puts "Client is #{client.full_name}"
end

# Create a whole bunch of clients in the insure_clients.rb
require 'faker'
# make sure you run bundle install to get these gems.
43.times do |i|
  fname = Faker::Name.first_name
  lname = Faker::Name.last_name

  # month-day-year
  dob_str = "#{rand(1..12)}-#{rand(1..28)}-#{rand(1910..Time.now.year)}"
  puts "dob_str = #{dob_str}"
  person = Person.new(fname, lname,dob_str)
  aetna.add_client(person)
end

aetna.clients.each do |client|
  puts "Client is #{client.full_name}"
end
