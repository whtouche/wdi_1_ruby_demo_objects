require_relative '../lib/insurance_company'

# Add Insured clients.

aetna = InsuranceCompany.new('Aetna')

tom = Person.new('tom', 'dyer')
aetna.add_client(tom)

jill = Person.new('jill', 'stein')
jack = Person.new('jack', 'sprat')
aetna.add_client(jill)
aetna.add_client(jack)

aetna.clients.each do |client|
  puts "Client is #{client.full_name}"
end
