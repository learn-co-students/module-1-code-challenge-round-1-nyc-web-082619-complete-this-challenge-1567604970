class Restaurant
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  #returns an array of all reviews for that restaurant
  def reviews 
    Review.all.select {|r| r.restaurant == self}
  end
  
  #Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers
    self.reviews.map {|r| "#{r.customer.first_name} #{r.customer.last_name}"}.uniq
  end
  
  # returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    ratings = self.reviews.map {|r| r.rating.to_f}
    ratings.sum/ratings.count.to_f
  end
  
  #- returns the longest review content for a given restaurant
  def longest_review
    #self.reviews {|r| self.reviews.content(r).size}
  end
  
  #- given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    Restaurant.all.find {|rest| rest.name == name}
  end
  
  def self.all
    @@all
  end
end
