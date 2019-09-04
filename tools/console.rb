require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Anya", "Schechter", 4)
c2 = Customer.new("Barack", "Obama", 2)
c3 = Customer.new("Cher", "Cher", 1)

r1 = Restaurant.new("Estela")
r2 = Restaurant.new("Katz")
r3 = Restaurant.new("Eleven Madison")

review1 = Review.new(c1, r1)
review1 = Review.new(c2, r2)
review1 = Review.new(c3, r3)

#add_review(r1, "review", 1)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line