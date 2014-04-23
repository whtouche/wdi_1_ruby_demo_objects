require 'date'
require 'chronic'

class Person
  attr_reader :first_name, :dob, :years_to_live
  attr_accessor :last_name, :married, :smokes

  def initialize(fname, lname, dob_str)
    @first_name = fname
    @last_name = lname
    @dob = DateTime.strptime(dob_str, '%m-%d-%Y').to_date
  end

  def is_married?
    married
  end

  def smokes?
    smokes
  end

  # getter method
  # def first_name
  #   @first_name
  # end

  # Setter method
  # def last_name
  #   @last_name
  # end

  # setter method
  # def last_name=(lname)
  #   @last_name = lname
  # end

  # getter method
  def full_name
    "#{@first_name} #{@last_name}"
  end

  def age
    now = Date.today
    now.year - dob.year - (now.strftime('%m%d') < dob.strftime('%m%d') ? 1 : 0)
  end
end
