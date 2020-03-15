require_relative '../config/environment.rb'



# My Variables 

macky = Artist.new("Macky", 3)
elle = Artist.new("Elle", 8)
tina = Artist.new("Tina", 20)
andy = Artist.new("Andy", 14)
met = Gallery.new("The Met", "New York, NY")
natgal = Gallery.new("The National Gallery", "Washington, DC")
rom = Gallery.new("Royal Ontario Museum", "Toronto, ON")
hillwood = Gallery.new("Hillwood Estate", "Washington, DC")
painting1 = Painting.new("A Beautiful Walk", 500, elle, met)
painting2 = Painting.new("All my Doggie Friends", 50, macky, hillwood)
painting3 = Painting.new("Dog Park Friends", 1000, elle, met)
painting4 = Painting.new("My Furever Family", 5000, elle, met)
painting5 = Painting.new("Cartoon World", 100, tina, rom)
painting6 = Painting.new("Cartoon Universe", 200, tina, rom)
painting7 = Painting.new("My Canadian Advenutre", 600, elle, rom)
painting8 = Painting.new("Scuba through my Third Eye", 100, andy, natgal)
painting9 = Painting.new("Suns and Manta Rays", 200, andy, natgal)

p "-----Aritst Tests------"
p Artist.all == [macky,elle,tina,andy]
p elle.paintings == [painting1, painting3, painting4, painting7]
p macky.paintings == [painting2]
p elle.galleries == [met, rom]
p andy.galleries == [natgal]
p elle.cities == ["New York, NY", "Toronto, ON"]
p macky.cities == ["Washington, DC"]
p Artist.total_experience == 45
p Artist.most_prolific == elle
elle.create_painting("Dinner Time!", 1000, hillwood)
p elle.paintings.count == 5

p "-----Painting Tests -----"
p Painting.all.count == 10
p Painting.total_price == 8750

p "-----Gallery Tests------"
p Gallery.all == [met, natgal, rom, hillwood]
p rom.paintings == [painting5, painting6, painting7]
p rom.artists == [tina, elle]
p rom.artists_names == ["Tina", "Elle"]
p hillwood.artists_names == ["Macky", "Elle"]
p rom.most_expensive_painting == painting7
p met.most_expensive_painting == painting4


puts "Bob Ross rules."

