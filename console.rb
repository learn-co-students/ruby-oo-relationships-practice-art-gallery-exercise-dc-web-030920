require_relative '../config/environment.rb'



#artist initialize(name, years_experience)
artist1 = Artist.new("FloJo", 5)
artist2 = Artist.new("David T.", 8)
artist3 = Artist.new("Not Bansky", 1)

#gallery def initialize(name, city)
gallery1 = Gallery.new("Mikes Coffee Shop", "New York")
gallery2 = Gallery.new("Not NotBansky Mom's Basement", "Chicago")
gallery3 = Gallery.new("The Capitol Museum", "Washington D.C.")
gallery4 = Gallery.new("Sunset Dreams", "Los Angeles")



#painting initialize(title, price, artist, gallery)
painting1 = Painting.new("The Creation of David", 500, artist1, gallery1)
painting2 = Painting.new("Stick Figure Man", 10, artist3, gallery2)
painting3 = Painting.new("I Can't Sleep", 5, artist3, gallery2)
painting4 = Painting.new("Skating on Vinyl", 400, artist1, gallery4)
painting5 = Painting.new("Circle Circle Dot Dot", 10, artist3, gallery2)
painting6 = Painting.new("Big Apple Small Apartment", 100, artist2, gallery1)
painting7 = Painting.new("24 7 365", 150, artist1, gallery3)
painting8 = Painting.new("I made it", 900, artist3, gallery1)


binding.pry

puts "Bob Ross rules."
