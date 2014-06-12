# This will "insert" the contents of the song.rb here

require_relative '../lib/song.rb'

# Add code to use the Song class here.

rap = Song.new('Harder Than You Think', 'Public Enemy', 240, 3)
rock = Song.new('Stairway to Heaven', 'Led Zeppelin', 360, 2)
country = Song.new('Something Terrible', 'Someone Terrible', 999, 1)

def average_duration(d1, d2, d3)
  (d1 + d2 + d3) / 3
end

def average_price(p1, p2, p3)
  (p1 + p2 + p3) / 3
end

puts rap.inspect
puts rock.inspect
puts country.inspect

puts

puts "The average duration is #{average_duration(rap.duration, rock.duration, country.duration)}"
puts "The average cost is #{average_price(rap.price, rock.price, country.price)}"

puts

rap.duration = 360
rock.duration = 460
country.duration = 50

puts rap.inspect
puts rock.inspect
puts country.inspect

puts

puts "The average duration is #{average_duration(rap.duration, rock.duration, country.duration)}"
puts "The average cost is #{average_price(rap.price, rock.price, country.price)}"

puts
