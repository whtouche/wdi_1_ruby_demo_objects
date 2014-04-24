require_relative 'person'

# InsuranceCompany class
# Camel Case - each word is capitalized.
class InsuranceCompany
  attr_reader :name

  def initialize(company_name)
    # instance variable, aka attribute
    # MUST start with the '@'
    @name = company_name
    @clients = []
  end

  # Add a person as a client
  def add_client(person)
    @clients << person
  end

  # get all my clients
  def get_clients
    @clients
  end
end