require_relative 'person'

class InsuranceCompany
  attr_reader :name

  def initialize(name)
    @name = name
    @clients = []
  end

  def add_client(person)
    @clients << person
  end

  def clients
    @clients
  end
end
