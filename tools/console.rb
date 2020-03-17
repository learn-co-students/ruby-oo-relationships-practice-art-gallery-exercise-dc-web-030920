require_relative '../config/environment.rb'

g1 = Gallery.new("Gallery One","Silver Spring")
g2 = Gallery.new("Nuts & Bolts", "Rockville")

a1 = Artist.new("Kanye", 27)
a2 = Artist.new("Jay-Z", 42)
a3 = Artist.new("J. Cole",130)

p1 = Painting.new(a1,g1,"Jesus Walks",17000)
p2 = Painting.new(a2,g1,"Baby Blue", 34000)
p3 = Painting.new(a3,g2,"Crooked Smile",48000)
p4 = Painting.new(a3,g1,"Planez",8000)





binding.pry
puts "Bob Ross rules."
