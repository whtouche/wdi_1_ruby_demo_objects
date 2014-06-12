class Song

  def initialize(title, artist_name, duration, price)
    @title = title
    @artist_name = artist_name
    @duration = duration
    @price = price
  end

  def title
    @title
  end

  def artist_name
    @artist_name
  end

  def duration
    @duration
  end

  def price
    @price
  end

  def price=(new_price)
    @price = new_price
  end
end
