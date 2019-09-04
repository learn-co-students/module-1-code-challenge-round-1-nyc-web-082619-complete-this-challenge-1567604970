require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Henry", "Vlad")
c2 = Customer.new("Arlo", "Guthrie")
c3 = Customer.new("JJ", "Simmons")

r1 = Restaurant.new("Alice's Restaurant")
r2 = Restaurant.new("Hotel London")

c1.add_review(r1, "good", 5)
c1.add_review(r2, "good", 4)
c2.add_review(r1, "bad", 3)
c3.add_review(r1, "trash", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
