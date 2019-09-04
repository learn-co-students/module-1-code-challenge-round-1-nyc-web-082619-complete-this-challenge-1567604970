require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

def run_yelp
  puts "Welcome to Yelp! Please enter your first name to continue:"
  first = gets.chop
  puts "And now your last name:"
  last = gets.chop
  custom_user = Customer.new(first, last)
  puts "Perfect! You're all set!"
end

charles = Customer.new("Charles", "Albright") ## Fancies himself a connoisseur, but eats Popeyes at least once a fortnight ##
frankie = Customer.new("Frankie", "Domino") ## Short on words - only ever seems to give 3s ##
benny = Customer.new("Benny", "Benson") ## Only made an account to promote his friend Tony's pizza place ##
charles2 = Customer.new("Charles", "Philipson") ## Lurker ##


vespucci = Restaurant.new("The Oyster Bar at Vespucci") ## A ritzy place on 23rd. Customers frequently ask "What's Vespucci?" ##
tonys = Restaurant.new("Tony's Pizza Joint") ## Small pizza parlour on DeKalb and Classon, loved by locals ##
fleau = Restaurant.new("Fleau de Notre Monde") ## Run down French restaurant that has seen better days ##
hanasemasen = Restaurant.new("Nihongo wa Hanasemasen") ## Trendy American/Japanese fusional fare on the edge of Williamsburg ##
piccante = Restaurant.new("Piccante Loco") ## Harlem Tacqueria famed for its hot sauce: "It's CRAAAAAYYYYYZY hot!!!" ##
bind = Restaurant.new("binding.fry") ## NoMethodError ##

charles.add_review(bind, "It may sound strange, but I couldn't work out the problem with this place.", 2)
charles.add_review(fleau, "Truly a blight upon our planet.", 1)
charles.add_review(vespucci, "'There comes a time in every man's life when he must dive headfirst into the world of gastronomy with passion and abandon.' - Oscar Wilde. On first walking into The Oyster Bar at Vespucci one immediately notices the sweet fragrance of bergamot and sandalwood permeating the air. It is clear that one is not in for some bacchinalian exhibitionism of cuisine, but a delight more epicurean in nature...", 5)
charles.add_review(tonys, "Do not let the decor fool you, Tony's Pizza has much to offer for even the most discerning of palates.", 4)

frankie.add_review(hanasemasen, "Made me feel at home", 3)
frankie.add_review(bind, "I didn't get the hype, but now i do", 3)
frankie.add_review(vespucci, "Biggest waste of money", 3)
frankie.add_review(tonys, "Tony's good people - Makes a good slice too", 3)

benny.add_review(fleau, "worst thing since my son", 2)
benny.add_review(tonys, "eyyyyy tonyyyyyy", 5)
benny.add_review(piccante, "top munch after a night out", 4)
benny.add_review(bind, "wait what joke", 1)
benny.add_review(tonys, "how you doinn tonyyyyyy", 5)

run_yelp

binding.pry
0 #leave this here to ensure binding.pry isn't the last line