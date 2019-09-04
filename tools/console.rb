require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


amanda_f = Customer.new("Amanda", "Ford")
amanda_h = Customer.new("Amanda", "Hamm")
greg_l = Customer.new("Greg", "Laser")
firsto_l = Customer.new("Firsto", "Lasto")
sam_j = Customer.new("Samual", "Jackson")
kate_a = Customer.new("Kate", "Appletree")

t_bell = Restaurant.new("Taco Bell")
p_hut = Restaurant.new("Pizza Hut")
chilis = Restaurant.new("Chili's")
mcdonalds = Restaurant.new("McDonalds")
kfc = Restaurant.new("KFC")

r1 = Review.new(amanda_f, p_hut, "terrible", 2)
r1 = Review.new(amanda_f, chilis, "meg", 3)
r2 = Review.new(greg_l, mcdonalds, "cheap", 3)
r3 = Review.new(sam_j, p_hut, "gross bathrooms", 1)
r4 = Review.new(firsto_l, t_bell, "gjkdshkghkds", 5)
r4 = Review.new(firsto_l, kfc, "good", 4)

amanda_f.add_review(t_bell, "Magical", 4)
firsto_l.add_review(t_bell, "really long review", 4)

amanda_f.num_reviews

firsto_l.restaurants

t_bell.longest_review

# Customer.find_all_by_first_name("Amanda")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line