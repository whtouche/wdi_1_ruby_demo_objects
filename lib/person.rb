require 'date'

class Person
  # no need to change the first name and dob
  attr_reader :first_name, :dob
  attr_accessor :last_name, :married, :current_smoker, :status

  # dob_str format must be '%m-%d-Y'
  def initialize(fname, lname, dob_str)
    @first_name = fname
    @last_name = lname
    @dob = Date.strptime(dob_str, '%m-%d-%Y')
    @years_to_live = 79 - age
    @married = false
    @current_smoker = false
    @status = 'inactive'
  end

  # this is an instance method.
  # It can only be called on a object, i.e. instance of Person.
  def full_name
    "#{@first_name} #{@last_name}"
  end

  def married?
    married
  end

  def current_smoker?
    current_smoker
  end
  
  def age
    now = Date.today
    now.year - dob.year - ((now.strftime('%m%d') < dob.strftime('%m%d')) ? 1 : 0)
  end

  def expected_death_year
      Date.today.year + years_to_live
  end

  def give_insurance
    !!(years_to_live > 20)
  end

  def status=(new_status)
    @status = new_status
    %x{ say "#{full_name} has changed their status to #{status}"}
  end
  
  private
  
  def years_to_live
    @years_to_live = 79 - age + (married? ? 5 : 0) - (current_smoker? ? 7 : 0)
  end
  
end
