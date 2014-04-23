require '../lib/person'


tom = Person.new('tom','dyer')

puts "Tom = #{tom}"
puts "Tom = #{tom.inspect}"
puts "Tom's first name is #{tom.first_name}"
puts "Tom's last name is #{tom.last_name}"
puts "Tom's full name is #{tom.full_name}"

# Comments:
# To create "an instance" of the Person class you must call the
# Person#new method.
# AKA Creating a person object (You'll hear both of these used.)

# The new method is inherited, we'll talk about inheritence later.
# Now we have two people, but they are alot alike. They have no attributes or properties.

# Lets give them some attributes.
# How can we distinguish btw people?
# What attributes can we can a person have. (Write these on the whiteboard)

# How about a first and last name

# Couple new concepts here.
# - Every class typically has an initialize method.
# - Its automatically invoked by the new method.
# - It typically has arguments that set the initial state of the
# object's attributes.
# - Instance attributes belong to each instance of a class. In this
# case each person.
# - Instance attributes are ALWAYS preceded by the @ sign.
# - Instance attributes are NEVER available outside a an object. There
# is a way that we can make these available though.

# Lookup the inspect method, helpful for debugging.
# http://ruby-doc.org/core-2.1.1/Object.html#method-i-inspect
# Returns a string containing a human-readable representation of
# obj. By default, show the class name and the list of the instance
# variables and their values

# The inspect method is defined on the Ruby Object class. All classes
# are subclasses of the Object class so all classes inherit this Object
# class methods. We'll see more later on inheritence.


# An object's instance attributes are "Encapsulated" OR hidden.
# We'll use methods to determine the behavior exposed to clients.
# More Later on why.

# Remember the object instance attributes are HIDDEN!!!!

# The methods of a class defines the classes Behavior.
# Above people can ONLY give you their last name. Thats all the
# behavior they have!
# So, the take away is only allow changes that are reasonable. Needed
# RIGHT NOW, by the specfic app you writing.

# Don't try to guess what the future behaviors this class will
# need. It's a common fail, you'll never know less than now what your
# app needs from this Person class. You'll know more as app features
# are needed in the future!

# YAGNI - You aint gonna need it!

# Lets talk about a shorter way to create 'getters' and 'setters'
# attr_reader - creates a getter method
# attr_writer - creates a setter method
# attr_accessor - creates a getter and setter method.


#####################################################
# Questions

#####################################################
# Next
# Now refactor using attr_* method.

# Show them how to load a ruby file in pry here?
# Maybe set them up with a .pryrc ?
