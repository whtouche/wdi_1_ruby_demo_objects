require 'date'

class Person

  AVG_LIFESPAN = 79
  MIN_YTL  = 20

  # generates getter methods for instance variables.
  # attr_reader  param1, param2, ...

  # generates setter methods for instance variables.
  # attr_writer  param1, param2, ...

  # generates getter and setter methods for instance variables.
  # attr_accessor  param1, param2, ...

  attr_reader :first_name, :dob
  attr_accessor :last_name 

  # dob - Date of Birth in format 'month-day-year'
  def initialize(fname, lname, dob_str)
    @first_name = fname
    @last_name = lname

    # Convert the dob_str to a Date object
    @dob = DateTime.strptime(dob_str, '%m-%d-%Y').to_date
  end

  # full name 
  def full_name
    "#{first_name} #{last_name}"
  end

  def age
    now = Date.today
    now.year - dob.year - ((now.strftime('%m%d').to_i - dob.strftime('%m%d').to_i) ? 1 : 0)
  end

  def years_to_live
    AVG_LIFESPAN - age
  end

  def is_insurable?
    years_to_live > MIN_YTL
  end

end







