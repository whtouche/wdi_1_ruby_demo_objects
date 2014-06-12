class Person
  attr_reader :first_name # no need to change the first name
  attr_accessor :last_name
  
  def initialize(fname, lname)
    @first_name = fname
    @last_name = lname
  end

  # # accessor, "getter" for the first_name
  # def first_name
  #   @first_name
  # end

  # # accessor, "getter" for the last_name
  # def last_name
  #   @last_name
  # end

  # # No accessor for the first name.
  # # It never changes!!
  
  # # accessor, "setter" for the last_name
  # def last_name=(last_name)
  #   @last_name = last_name
  # end
  
  # this is an instance method.
  # It can only be called on a object, i.e. instance of Person.
  def full_name
    "#{@first_name} #{@last_name}"
  end
end
