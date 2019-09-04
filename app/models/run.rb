require "pry"
require_relative "customer"
require_relative "restaurant"
require_relative "review"


alex = Customer.new("Alex", "Rodriguez")
al = Customer.new("Alex", "Rothstein")
mike = Customer.new("Michael", "McCarville")
wadgma = Customer.new("Wadgma", "Masab")

boons = Restaurant.new("Uncle Boons")
chao = Restaurant.new("Chao Chao")
del = Restaurant.new("Delmonicos")

ar1 = Review.new(alex, boons, "Authentic south-east Asian cuisine. 3 hour wait worth every minute.", 5)
ar2 = Review.new(alex, chao, "expensive for vietnamese, but good.", 4)
ar3 = Review.new(alex, del, "overrated steak.", 3)
mr1 = Review.new(mike, chao, "gross!!!", 2)
w1 = Review.new(wadgma, chao, "very profound flavors.", 4)
binding.pry
