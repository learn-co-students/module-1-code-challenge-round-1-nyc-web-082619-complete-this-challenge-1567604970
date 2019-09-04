require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

res1 = Restaurant.new("Olive Garden")
res2 = Restaurant.new("Chart house")
res3 = Restaurant.new("House of Q")
res4 = Restaurant.new("Porto")
res5 = Restaurant.new("Margarita vill")
res6 = Restaurant.new("Pier 115")

cos1 = Customer.new("Tania", "Manco")
cos2 = Customer.new("Tom", "Leigh")
cos3 = Customer.new("Jim", "Cohen")
cos4 = Customer.new("Bob", "Jackson")
cos5 = Customer.new("Richard", "Miller")
cos6 = Customer.new("Thomas", "David")
cos7 = Customer.new("Max", "Negel")
cos8 = Customer.new("Jenny", "Manco")

rev1 = Review.new(cos2, res4, 5, "Reccomended")
rev2 = Review.new(cos3, res5, 1, "Stay away")
rev3 = Review.new(cos2, res1, 4, "good food & servise")
rev4 = Review.new(cos8, res3, 2, "wont come back")
rev5 = Review.new(cos1, res2, 2, "not worth it")
rev6 = Review.new(cos5, res6, 4, "Loved it")
rev7 = Review.new(cos4, res6, 3, "its ok")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line