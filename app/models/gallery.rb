class Gallery

  attr_reader :name, :city

  @@gallery = []

  def initialize(name, city)
    @name = name
    @city = city
    @@gallery << self
  end

  def self.all
    @@gallery
  end

  # Returns an `array` of all paintings in a gallery
  def paintings
    Painting.all.find_all do |gi|
      gi.gallery == self
    end
  end

  # Returns an `array` of all artists that have a painting in a gallery
  def artists
    artist = self.paintings.map do |ai|
      ai.artist
    end
  end

  #Returns an `array` of the names of all artists that have a painting in a gallery
  def artist_names
    self.artists.map do |ai|
      ai.name
    end
  end

# Returns an `instance` of the 
# most expensive painting in a gallery
  def most_expensive_painting
    paintings.max_by do |pi|
      pi.price
    end
  end




end
