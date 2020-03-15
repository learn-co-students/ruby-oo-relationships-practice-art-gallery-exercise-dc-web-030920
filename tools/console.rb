require_relative '../config/environment.rb'


artist1 = Artist.new("David", 5)
artist2 = Artist.new("Junior", 6)
artist3 = Artist.new("T", 7)

gallery1 = Gallery.new("Art-Plaza", "Baltimore")
gallery2 = Gallery.new("DeCaso", "Las Vegas")
gallery3 = Gallery.new("BrookNew", "Miami")


painting1 = Painting.new("Monalisa", 365, gallery1, artist1)
painting2 = Painting.new("Sculptor_of_Pines", 465, gallery2, artist1)
painting3 = Painting.new("Modern Times", 665, gallery3, artist2)

painting4 = Painting.new("War_At_Sea", 545, gallery3, artist2)
painting6 = Painting.new("In the Light", 1000, gallery1, artist3)
painting6 = Painting.new("Sponge Dance", 3000, gallery1, artist3)



binding.pry

puts "Bob Ross Rules"