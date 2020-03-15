class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all_paintings = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all_paintings << self
  end

  def self.all
    @@all_paintings
  end

  def self.total_price
    total = 0
    self.all.find_all do |pi|
      total += pi.price
    end
    total
  end

end
