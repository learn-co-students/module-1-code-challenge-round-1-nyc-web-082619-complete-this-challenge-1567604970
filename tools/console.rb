require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jallen = Customer.new("Jallen", "Messersmith")
eugenia = Customer.new("Eugenia", "Kim")

mcdonalds = Restaurant.new("McDonalds")
applebees = Restaurant.new("Applebees")

jallen.add_review(mcdonalds, "Dollar Menu for the Win!", 3)
jallen.add_review(applebees, "The largest Applebees in the World", 4)

eugenia.add_review(mcdonalds, "Hated it!", 1)
eugenia.add_review(applebees, "The best restaurant in the world!", 5)

jallen.num_reviews 

mcdonalds.customers
applebees.reviews 


Customer.find_by_name("Jallen Messersmith")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line