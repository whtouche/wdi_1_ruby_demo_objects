# This will "insert" the contents of the song.rb here

require_relative '../lib/song.rb'

# Add code to use the Song class here.
# title, artist name, duration (seconds), price, release year (optional)
song1 = Song.new("chocolate jesus", 'Tom Waits', 185, 1.99)
song2 = Song.new('Golden Age', 'Beck', 205, 1.49, 2008)
song3 = Song.new('Cause weve ended', 'Jeff Beck', 237, 0.99, 1973)

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

song1.price = 10.00
puts "The song #{song1.inspect}"
puts "The artist #{song1.artist_name}"
puts "gets #{song1.artist_cut} which is #{song1.artist_percentage} percentage "

song2.price = 2.00
puts "The song #{song2.inspect}"
puts "The artist #{song2.artist_name}"
puts "gets #{song2.artist_cut} which is #{song2.artist_percentage} percentage "

song3.price = 1.00
puts "The song #{song3.inspect}"
puts "The artist #{song3.artist_name}"
puts "gets #{song3.artist_cut} which is #{song3.artist_percentage} percentage "
