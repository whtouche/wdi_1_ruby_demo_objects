require 'date' # So that we can use strptime
# This is a Ruby class
class Person
  # Generate a getter for the instance variable @first_name
  attr_reader :first_name, :dob

  # Generate a getter and setter for the instance variable @last_name
  attr_accessor :last_name, :current_smoker, :married

  # Called when a new instance of the class (Person) is created
  # dob_str must be in 'm-d-Y' ## upper case letters = 4 digits
  # "06-02-1957"
  def initialize(fname, lname, dob_str)
    # Instance variables (always start with @)
    # Instance variables have instance/object scope
    @first_name = fname
    @last_name = lname
    @dob = Date.strptime(dob_str, '%m-%d-%Y')
    @years_to_live = 79 - age
    @current_smoker = false
    @married = false
  end

  # Defining method so that we can use question mark (?) as boolean conevntion
  def current_smoker?
    @current_smoker
  end

  def married?
    @married
  end

  def give_insurance?
    ytl = @years_to_live
    if current_smoker?
      ytl -= 7
    end
    if married?
      ytl += 5
    end
    ytl > 20
  end

  #instance method for age
  def age
    now = Date.today
    now.year - dob.year
  end

  def full_name
    @first_name + ' ' + @last_name
  end

  def years_to_live
    (79 - age) - ( current_smoker? ? -7 : 0) + ( married? ? 5 : 0)
  end

end



=begin
  # Getter method
  # Exposes the instance variable to the world outside of the class
  def first_name
    @first_name
  end

  # Getter method
  # Exposes the instance variable to the world outside of the class
  def last_name
    @last_name
  end

  # Setter method
  # Used to set the instance variable from outside the class
  def last_name=(lname)
    @last_name = lname
  end
=end
