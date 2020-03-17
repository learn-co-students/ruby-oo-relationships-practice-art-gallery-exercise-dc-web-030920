class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|p| p.gallery == self}
  end

  def artists
    Painting.all.select{|p| p.gallery == self}.map{|g| g.artist}
  end

  def artist_names
    Painting.all.select{|p| p.gallery == self}.map{|g| g.artist.name}
  end

  def most_expensive_painting
    paintings.max_by do |paint|
      paint.price
    end

  end

end
