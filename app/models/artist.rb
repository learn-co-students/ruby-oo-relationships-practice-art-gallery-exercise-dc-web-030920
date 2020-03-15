class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all

  end

  def paintings
    Painting.all.select { |x| x.artist == self}
  end

  def galleries
    paintings.map { |x| x.gallery }
  end

  def cities
      galleries.map {|x| x.city}.uniq
  end

  def self.total_experience
     xp = 0
     self.all.each {|x| xp += x.years_experience}
     xp
  end

  def self.most #average of number of paintings per year
    hash = Hash.new(0)
    Painting.all.map do |x|
      artist_name = x.artist
      if !hash[artist_name]
        hash = [artist_name]
      elsif hash[artist_name]
        hash[artist_name] += 1
      end
    end
    hash.max_by {|artist_instance, num_paintings| num_paintings / artist_instance.years_experience}[0] 
    # binding.pry
  end

  def create_painting(title, price, gallery)#("The Creation of David", 500, artist1, gallery1)
    Painting.new(title, price, self, gallery)
    # binding.pry
  end

end


# ARTIST

#   x   Artist.all  Returns an array of all the artists
#   x   Artist#paintings Returns an array all the paintings by an artist
#   x   Artist#galleries Returns an array of all the galleries that an artist has paintings in
#   x   Artist#cities Return an array of all cities that an artist has paintings in
#   x   Artist.total_experience Returns an integer that is the total years of experience of all artists
#   x    Artist.most_prolific  Returns an instance of the artist with the highest amount of paintings per year of experience.
#    x   Artist#create_painting  Given the arguments of title, price and gallery, creates a new painting belonging to that artist
