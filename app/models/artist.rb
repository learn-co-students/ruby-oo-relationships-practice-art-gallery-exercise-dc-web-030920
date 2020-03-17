require 'pry'

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
  Painting.all.select{|p| p.artist == self} 
  end

  def galleries
    Painting.all.select{|p| p.artist == self}.map{|g| g.gallery}
  end

  def cities
    Painting.all.select{|p| p.artist == self}.map{|s| s.gallery.city }
  end

  def self.total_experience
    Artist.all.map{|a| a.years_experience }.sum
  end
 
  
  def self.most_prolific
    # # need to figure out amount of paintings and devide by exp.
    self.all.max_by do |a|
        a.paintings.length / a.years_experience
    end
  end

  def create_painting(gallery,title,price)
    Painting.new(self,gallery,title,price)
  end
end

