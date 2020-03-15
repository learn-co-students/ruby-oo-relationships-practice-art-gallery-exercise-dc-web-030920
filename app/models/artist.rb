class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

#  Returns an `array` of all the artists
  def self.all 
    @@all
  end
    

  #Returns an `array` all the paintings by an artist
def paintings
  Painting.all.select do |p|
    p.artist == self 
  end
end

    # Returns an `array` of all the galleries that an artist has paintings in
def galleries
  galleries = self.paintings.map do |p|
    p.gallery
  end
  galleries.uniq
end 

#Return an `array` of all cities that an artist has paintings in
def cities
  self.galleries.map do |g|
    g.city
  end
end

#  Returns an `integer` that is the total years of experience of all artists
def self.total_experience
  total = 0 
  self.all.each do |a|
    total += a.years_experience
  end 
  total
end

# Returns an `instance` of the artist with the highest amount of paintings per year of experience.
def self.most_prolific
paintings_per_yr = 0.to_f
most_prolific = nil 
  self.all.each do |a|
      a_paintings_per_yer = a.paintings.count.to_f/a.years_experience.to_f
      if a_paintings_per_yer > paintings_per_yr
        paintings_per_yr = a_paintings_per_yer
        most_prolific = a 
      end 
  end 
  most_prolific
end 

def create_painting(title,price,gallery)
# Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
  Painting.new(title, price, self , gallery)
end 

end