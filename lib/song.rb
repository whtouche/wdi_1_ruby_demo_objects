require 'date'

class Song
  attr_reader :title, :artist_name, :duration
  attr_accessor :price, :release_year

  def initialize(title, artist_name, duration, price, release_year = Date.today.year)
    @title = title
    @artist_name = artist_name
    @duration = duration
    @price = price
    @release_year = release_year
  end

  def age
    Date.today.year - release_year 
  end
  
  def artist_percentage
     20 - ((age/5) * 0.05)
  end

  def artist_cut
    price * artist_percentage/100
  end
end
