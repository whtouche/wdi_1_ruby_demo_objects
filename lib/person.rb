class Person

  # generates getter methods for instance variables.
  # attr_reader  param1, param2, ...

  # generates setter methods for instance variables.
  # attr_writer  param1, param2, ...

  # generates getter and setter methods for instance variables.
  # attr_accessor  param1, param2, ...

  attr_reader :first_name
  attr_accessor :last_name 

  def initialize(fname, lname)
    @first_name = fname
    @last_name = lname
  end

  # # getter
  # def first_name
  #   @first_name
  # end

  # # getter
  # def last_name
  #   @last_name
  # end

  # # setter 
  # def last_name=(last_name)
  #   @last_name = last_name
  # end

  # full name 
  def full_name
    "#{first_name} #{last_name}"
  end
end