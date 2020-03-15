require_relative '../config/environment.rb'

# binding.pry


puts "----Testing Artist Variables----"
artist1 = Artist.new("Amanda", 5)
p artist1.name == "Amanda"
p artist1.years_experience == 5

artist2 = Artist.new("Uzoma", 7)
p artist2.name == "Uzoma"
p artist2.years_experience == 7

artist3 = Artist.new("Chibu", 25)
p artist3.name == "Chibu"
p artist3.years_experience == 25

artist4 = Artist.new("Da Vinci", 100)
p artist4.name == "Da Vinci"
p artist4.years_experience == 100

puts "----Testing Gallery Variables----"
gallery1 = Gallery.new("Hishorn", "DC")
p gallery1.name == "Hishorn"
p gallery1.city == "DC"

gallery2 = Gallery.new("Smithsonian", "Seattle")
p gallery2.name == "Smithsonian"
p gallery2.city == "Seattle"

gallery3 = Gallery.new("Vineyard", "Atlanta")
p gallery3.name == "Vineyard"
p gallery3.city == "Atlanta"

gallery4 = Gallery.new("Louvre", "Washington")
p gallery4.name == "Louvre"
p gallery4.city == "Washington"

puts "----Testing Painting Variables----"
painting1 = Painting.new("Spices", 200, artist1, gallery1)
painting2 = Painting.new("Magnificent", 4000, artist2, gallery2)
painting3 = Painting.new("Space", 20, artist3, gallery3)
painting4 = Painting.new("Mona Lisa", 1000, artist4, gallery4)
painting5 = Painting.new("Human", 3000, artist4, gallery4)
painting6 = Painting.new("Skeleton", 3500, artist2, gallery3)


puts "----Testing Artist Methods ----"
p Artist.all == [artist1, artist2, artist3, artist4]
p artist2.paintings == [painting2, painting6]
p artist4.galleries == [gallery4]
p artist3.cities == ["Atlanta"]
p Artist.total_experience == 137
p Artist.most_prolific == artist1
artist4.create_painting("The Wonderful Painting", 600, "Lourve")
p artist4.paintings.count == 3


puts "----Testing Painting Methods----"
p Painting.all.count == 7
p Painting.total_price == 12320


puts "----Testing Gallery Methods----"
p Gallery.all == [gallery1, gallery2, gallery3, gallery4]
p gallery3.paintings == [painting3, painting6]
p gallery3.artists == [artist3, artist2]
p gallery3.artist_names == ["Chibu", "Uzoma"]
p gallery4.most_expensive_painting == painting5











puts "-----------------------------------------------"
puts "Bob Ross rules."


