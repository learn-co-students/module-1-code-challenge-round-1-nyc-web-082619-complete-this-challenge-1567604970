require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jill_valentine = Customer.new("Jill", "Valentine")
chris_redfield = Customer.new("Chris", "Redfield")
john_locke = Customer.new("John", "Locke")
wally_west = Customer.new("Wally", "West")
jefferson_pierce = Customer.new("Jefferson", "Pierce")
puts "Customers Created!!!"

vong = Restaurant.new("Vong")
pink_teacup = Restaurant.new("Pink TeaCup")
soco = Restaurant.new("SoCo")
bebe_fritay = Restaurant.new("BeBe Fritay")
red_lobster = Restaurant.new("Red Lobster")
the_bake_shop = Restaurant.new("The Bake Shop")
russos = Restaurant.new("Russo's")
puts "Restaurants Created!!!"

rv1 = Review.new("James Nolan", soco, "Good Stuff", wally_west, 3 )
rv2 = Review.new("Bibo Jones", soco, "Good Stuff", wally_west, 1 )
rv3 = Review.new("Carey Sloan", soco, "Good Stuff", wally_west, 3)
rv4 = Review.new("Maria Delgado", soco, "Good Stuff", wally_west, 2 )
rv5 = Review.new("Ramiek Harris", soco, "Good Stuff", wally_west, 4 )
rv6 = Review.new("Biff Scott", soco, "Good Stuff", wally_west, 4 )
rv7 = Review.new("Janay Williams", soco, "Good Stuff", wally_west, 4 )
rv8 = Review.new("James Nolan", soco, "Good Stuff", wally_west, 2 )
rv9 = Review.new("James Nolan", soco, "Good Stuff", wally_west, 1 )
rv10 = Review.new("James Nolan", soco, "Good Stuff", wally_west, 5 )



binding.pry
0 #leave this here to ensure binding.pry isn't the last line