require '../lib/insurance_company'


aetna = InsuranceCompany.new('Aetna')
aetna.add_client(Person.new('tom', 'dyer'))
aetna.add_client(Person.new('ed', 'dyer'))
aetna.add_client(Person.new('jill', 'stein'))
aetna.add_client(Person.new('jack', 'sprat'))

print "Enter a last name to find: "
lname = gets.chomp
clients_found = aetna.get_by_last_name(lname)

clients_found.each { |client| puts "Client #{client.full_name} was found"}
