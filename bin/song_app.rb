# This will "insert" the contents of the song.rb here

require_relative '../lib/song.rb'

# Add code to use the Song class here.
song1 = Song.new("chocolate jesus", 'Tom Waits', 185, 1.99)
song2 = Song.new('Golden Age', 'Beck', 205, 1.49)
song3 = Song.new('Cause weve ended', 'Jeff Beck', 237, 0.99)

puts "#{song1.inspect}"
puts "#{song2.inspect}"
puts "#{song3.inspect}"

avg_duration = (song1.duration + song2.duration + song3.duration)/3
puts "Avg song duration is #{avg_duration}"

avg_price = ((song1.price + song2.price + song3.price)/3)
puts "Avg song price is #{avg_price}"

song1.price = 0.49
avg_price = ((song1.price + song2.price + song3.price)/3)
puts "Avg song price is #{avg_price}"
