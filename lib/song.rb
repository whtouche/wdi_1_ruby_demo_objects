class Song
  attr_reader :title, :artist_name, :duration
  attr_accessor :price

  def initialize(title, artist_name, duration, price)
    @title = title
    @artist_name = artist_name
    @duration = duration
    @price = price
  end

end
