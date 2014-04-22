require 'pry'

# Class names are singular
class Cat
  # Automatically creates getter and setter methods
  attr_accessor :age, :gender

  # This is called when Cat.new("Jade") is run
  def initialize(name, age=0, hair="bald")
    # Sets the initial name of the cat
    @name = name + " fuzzball"
    @age = age
    @hair = hair
    # Sets default state of the cat
    @is_sleeping = false
  end

  # Instance method. This isn't a setter or getter
  def meow
    puts "MEOW"
  end

  # increments the birthday
  def have_birthday
    @age = @age + 1
  end

  # GETTER
  # Returns boolean value if the cat is sleeping or not
  def is_sleeping?
    @is_sleeping
  end

  # SETTER
  # Set if the cat is sleeping or not
  def is_sleeping=(state)
    @is_sleeping = state
  end
end

# Creates two new instances of the class Cat
my_cat = Cat.new("Jade")
your_cat = Cat.new("Paws", 3, "long")
