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
    Painting.all.select { |x| x.gallery == self}
  end

  def artists
    paintings.map {|x| x.artist}
  end

  def artist_names
    artists.map { |x| x.name }
  end

  def most_expensive_painting
    paintings.max_by { |x| x.price}
  end
end


# GALLERY

# x Gallery.all Returns an array of all the galleries
# x Gallery#paintings Returns an array of all paintings in a gallery
# x Gallery#artists xReturns an array of all artists that have a painting in a gallery
# x  Gallery#artist_names x Returns an array of the names of all artists that have a painting in a gallery
# x Gallery#most_expensive_painting Returns an instance of the most expensive painting in a gallery