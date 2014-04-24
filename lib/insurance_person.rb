require_relative 'person'

# This class is a subclass, child, of Person class
class InsurancePerson < Person

  AVG_LIFESPAN = 79
  MIN_YTL  = 20

  attr_reader :dob 

  def initialize(fname, lname, dob_str)
    # Invoke/Call the initialize method of the parent class
    super(fname, lname)

    # Convert the dob_str to a Date object
    @dob = DateTime.strptime(dob_str, '%m-%d-%Y').to_date
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