class Artist

  attr_reader :name, :years_experience

  @@all_artist = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all_artist << self
  end

  def self.all
    @@all_artist
  end

    #Returns an array of all the paintings by an artist
  def paintings
    Painting.all.find_all do |pi|
      pi.artist == self
      end
  end

    #returns an array of all the galleries that artist has paintings in
  def galleries
    galleries = self.paintings.map do |pi|
      pi.gallery
    end
    galleries.uniq
  end

  #return an Return an `array` of all cities that an artist has paintings in
  def cities
    self.galleries.map do |gi|
      gi.city
    end
  end

  def self.total_experience
    total_years = 0
    Artist.all.each do |ai|
      total_years += ai.years_experience
    end
    total_years
  end

    #Returns an `instance` of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific
    Artist.all.max_by do |ai|
      ai.paintings.count / ai.years_experience
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end



end
