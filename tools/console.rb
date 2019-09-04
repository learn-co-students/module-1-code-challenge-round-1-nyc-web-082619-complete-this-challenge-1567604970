require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#Restaurant Created

popeyes = Restaurant.new("Popeyes")
chipotle = Restaurant.new("Chipotle")
wendys = Restaurant.new("Wendys")




#Customers

eugenia = Customer.new("eugenia", "kim")
steven = Customer.new("charlie", "russo")
charlie = Customer.new("steven", "doran")
jallen = Customer.new("jallen", "massersmith")

#Review 

r1 = Review.new(eugenia, popeyes, 5, "Good sandwich")
r2 = Review.new(eugenia, chipotle, 1, "Gross")
r3 = Review.new(steven, wendys, 4, "Yummy food; great logo")
r4 = Review.new(jallen, popeyes, 3, "Meh")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line