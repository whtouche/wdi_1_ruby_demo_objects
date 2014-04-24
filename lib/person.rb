class Person
  # this is the body of the class

  def initialize(fname, lname)
    @first_name = fname
    @last_name = lname
  end

  # getter
  def first_name
    @first_name
  end

  # getter
  def last_name
    @last_name
  end

  # setter 
  def last_name=(last_name)
    @last_name = last_name
  end

  # full name 
  def full_name
    "#{first_name} #{last_name}"
  end
end