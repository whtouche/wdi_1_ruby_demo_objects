# Create an Insurance Company
require_relative '../lib/insurance_company'

aetna = InsuranceCompany.new('Aetna')
puts "Insurance company is #{aetna.name}"
