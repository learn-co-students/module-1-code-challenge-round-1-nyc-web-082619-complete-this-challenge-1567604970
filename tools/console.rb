require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

puts "Make Customers"
c1 = Customer.new("John", "Smith")
c2 = Customer.new("Alice", "Jones")
c3 = Customer.new("Jimmy", "Dean")
c4 = Customer.new("Alex", "Potvin")
c5 = Customer.new("George", "Knutson")

puts "Made some customers"

puts "Make some Restaurants"
r1 = Restaurant.new("Olive Garden")
r2 = Restaurant.new("McDonalds")
r3 = Restaurant.new("Al di La")
r4 = Restaurant.new("Talde")
r5 = Restaurant.new("Wayan")

puts "Made a bunch of Restaurants"

puts "Maing Reviews"
review1 = Review.new(c1,r1)
review2 = Review.new(c1,r2)
review3 = Review.new(c1,r3)
review4 = Review.new(c1,r4)
review5 = Review.new(c1,r5)
review6 = Review.new(c2,r2)
review7 = Review.new(c2,r3)
review8 = Review.new(c3,r2)
review9 = Review.new(c3,r4)
review10 = Review.new(c4,r2)
review11 = Review.new(c5,r3)

puts "Made several Reviews"

binding.pry
0 #leave this here to ensure binding.pry isn't the last line