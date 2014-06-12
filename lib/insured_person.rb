require_relative 'person'

# Create a subclass of Person
# InsuredPerson inherits functionality from Person
class InsuredPerson < Person
  attr_accessor :current_smoker

  def initialize(first_name, last_name, dob_str)
    # Calls parent's initializer
    super
    @current_smoker = false
  end

  def current_smoker?
    @current_smoker
  end

  def give_insurance?
    years_to_live > 20
  end

  # Methods below private can not be called outside of the class
  private

  def years_to_live
      (79 - age) - ( current_smoker? ? -7 : 0) + ( married? ? 5 : 0)
    end

end



# Defining method so that we can use question mark (?) as boolean conevntion

