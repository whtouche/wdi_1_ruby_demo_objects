class Song
  attr_reader :title, :desc, :duration
  attr_accessor :price

  def initialize(title, desc, duration, price)
    @title = title
    @desc = desc
    @duration = duration
    @price = price
  end

end
