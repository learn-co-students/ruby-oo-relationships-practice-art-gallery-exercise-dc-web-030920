class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all 
    # Returns an `array` of all the galleries
    @@all 
  end 

  def paintings
    # Returns an `array` of all paintings in a gallery
  Painting.all.select do |p|
    p.gallery == self
    end 
  end 

  def artists
    # Returns an `array` of all artists that have a painting in a gallery
   artists = self.paintings.map do |p|
    p.artist
   end 
   artists.uniq
  end

  def artists_names
    # Returns an `array` of the names of all artists that have a painting in a gallery
    self.artists.map do |a|
      a.name
    end 
  end 

  def most_expensive_painting
# Returns an `instance` of the most expensive painting in a gallery
  #   highest_price = 0 
  #   most_expensive_painting = nil
  #   self.paintings.each do |p|
  #     if p.price > highest_price
  #          highest_price = p.price 
  #          most_expensive_painting = p 
  #     end 
  #   end
  #   most_expensive_painting
  # end 
    paintings.max_by do |painting|
      painting.price
    end
  end

end
