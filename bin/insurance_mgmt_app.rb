require_relative '../lib/insurance_company.rb'

print  "What is the name of the Insurance Company? "
company_name = gets.chomp

company = InsuranceCompany.new(company_name)

#puts "company is #{company.inspect}"

55.times do |i|
  month = rand(1..12)
  day = rand(1..28)  # All months have at least 28 days

  year = rand(1914..2004)
  dob_str =  "#{month}-#{day}-#{year}"
  # puts "DOB is #{dob_str}"

  person = InsurancePerson.new("fname_#{i}", "lname_#{i}", dob_str)
  person.married = (rand(2) == 0 ? false : true)
  person.smoke_cigarettes = (rand(2) == 0 ? false : true)
  # puts "Person = #{person.inspect}"

  company.add_client(person) if person.is_insurable?

end

puts "Insurance Company #{company.name} has #{company.get_clients.length} clients."
