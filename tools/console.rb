require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Neeraj", "Khosla")
c2 = Customer.new("Geoff", "Newman")
c3 = Customer.new("Perry", "Silverman")
c4 = Customer.new("Geoff", "Heiner")

r1 = Restaurant.new("Chipotle")
r2 = Restaurant.new("Subway")
r3 = Restaurant.new("Durden")

rw1 = Review.new(c1, r1, "Fantastic!", 5)
rw2 = Review.new(c1, r2, "Meh", 3)
rw3 = Review.new(c3, r3, "Great!", 5)
rw4 = Review.new(c1, r1, "Amazing", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line