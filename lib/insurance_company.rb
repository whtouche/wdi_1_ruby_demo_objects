# InsuranceCompany class
# Camel Case - each word is capitalized.
class InsuranceCompany

  def initialize(company_name)
    # instance variable, aka attribute
    # MUST start with the '@'
    @name = company_name
  end

  # getter
  def name
    @name
  end
end