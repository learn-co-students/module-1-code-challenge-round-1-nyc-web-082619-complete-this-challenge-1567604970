require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Customer.new("p1-first","p1-last")
p2 = Customer.new("p2-first","p2-last")
p3 = Customer.new("p3-first","p3-last")
p4 = Customer.new("p4-first","p4-last")
joe = Customer.new("Joe","Smith")
joef = Customer.new("Joe","Frank")
mike = Customer.new("Mike","Frank")


r1 = Restaurant.new("r1")
r2 = Restaurant.new("r2")
r3 = Restaurant.new("r3")
r4 = Restaurant.new("r4")

review1 = p1.add_review(r1, "Good Stuff!", 9)
review2 = p1.add_review(r2, "Decent place", 6)
review3 = p2.add_review(r1, "VV GOOD!", 10)
review4 = p1.add_review(r1, "Still Great!", 9)
review5 = p3.add_review(r1, "Okay food", 5)
review6 = joe.add_review(r1, "Okay food", 6)
review7 = joe.add_review(r3, "Okay food", 5)
review6 = mike.add_review(r1, "Okay food", 6)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line