require '../lib/person'


jill = Person.new('jill', 'stein')
# change jill's last name.

jill.last_name = "Smith"
puts "jill's name is #{jill.full_name}"

# jill.last_name("Roy")
jill.last_name=("Roy")
puts "jill's name is #{jill.full_name}"
