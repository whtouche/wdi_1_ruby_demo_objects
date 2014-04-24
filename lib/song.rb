class Song
  def initialize(title, desc, duration, price)
    @title = title
    @desc = desc
    @duration = duration
    @price = price
  end

  def title
    @title
  end
  def desc
    @desc
  end
  def duration
    @duration
  end
  def price
    @price
  end

  def price=(price)
    @price = price
  end
end
