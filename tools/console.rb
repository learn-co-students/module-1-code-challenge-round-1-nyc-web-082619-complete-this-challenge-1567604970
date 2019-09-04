require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Start Creating Customer-------->
steven = Customer.new("Steven", "Real")
charlie = Customer.new("Mr", "Charlie")
kevin = Customer.new("Kevin", "Karma")
tenzin = Customer.new("Tenzin", "Ngawang")
# End Creating Customer------->

# Start Creating Restaurant------->
sevenEleven = Restaurant.new("7eleven")
mcDonald = Restaurant.new("MCDonald")
applebees = Restaurant.new("Apple Bees")
bostonMarket = Restaurant.new("Boston Market")
# Start Creating Restaurant------->

# Start Creating Review-------->
r1 = steven.add_review(sevenEleven,"open 24/7",3.5)
r2 = steven.add_review(sevenEleven,"open 24/7 and realy clean",5)
r3 = steven.add_review(mcDonald,"not Clean", 1.5)
r4 = charlie.add_review(applebees,"gooooood beer", 4)
# Start Creating Review-------->


binding.pry
0 #leave this here to ensure binding.pry isn't the last line