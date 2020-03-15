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
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    Painting.all.select{|painting| painting.artist == self
  }.map{|art| art.gallery}

  end

  def cities
    Painting.all.select{|painting| painting.artist == self
  }.map{|art| art.city}
  end

  def self.total_experience
    sum = 0
    self.all.reduce{|artist| sum += artist.total_experience}
  end

  def self.most_prolific
    artist_arr = self.all.map{|artist| (artist.paintings.count * 1.0) / artist.years_experience}
    num = artist_arr[0]
    i = 0
    while i < artist_arr.length do
      if num < artist_arr[i]
        num = artist[i]
      end
      i += 1
    end
    index = artist_arr.find_index(num)
    return self.all[index]
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end




end
