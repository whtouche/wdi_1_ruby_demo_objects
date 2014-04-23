require_relative '../lib/insurance_company'

# Add Insured clients.

aetna = InsuranceCompany.new('Aetna')

tom = InsuredPerson.new('tom', 'dyer', '6-2-1957')
tom.smokes = true
aetna.add_client(tom)

jill = InsuredPerson.new('jill', 'stein', '4-22-1952')
jill.married = true
jack = InsuredPerson.new('jack', 'sprat', '1-20-1990')
aetna.add_client(jill)
aetna.add_client(jack)

puts "We have #{InsuredPerson.count} InsuredUsers"
puts "We have #{InsuredPerson.insurable_people.length} Insurable People "

aetna.clients.each do |client|
  puts "Client is #{client.full_name}"
  puts "Client ID =  #{client.ins_id}"
  puts "Client is uninsurable? #{client.give_insurance?}"
end
