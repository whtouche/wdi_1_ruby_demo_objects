require 'date'
require 'chronic'

class Person
  attr_accessor :last_name, :married
  attr_reader :first_name, :dob

  def initialize(fname, lname, dob_str)
    @first_name = fname
    @last_name = lname

    @dob = DateTime.strptime(dob_str, '%m-%d-%Y').to_date
    @years_to_live = 79 - age
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def age
    now = Date.today
    now.year - dob.year - (now.strftime('%m%d') < dob.strftime('%m%d') ? 1 : 0)
  end

  def expected_death_year
    Chronic.parse("#{years_to_live} years from now").year
  end

  def give_insurance?
    years_to_live > 20
  end

  def is_married?
    married
  end

  private
  def years_to_live
    79 - age + (is_married? ? 5 : 0)
  end
end
