
## I like to write long variable name and comment method if got time 


class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews # returns an array of all reviews for that restaurant
    Review.all.select { |review| review.restaurant == self}
  end

  def customers # Returns a unique list of all customers who have reviewed a particular restaurant.
    all_customer = self.reviews.map { |review| review.customer}
    all_customer.uniq 
  end

  def total_rating # --- Helper method, return sum of all rating (integer)
    total_review = 0
    self.reviews.each { |review| total_review += review.rating }
    total_review
  end

  def average_star_rating # returns the average star rating for a restaurant based on its reviews
    num_of_reviews = reviews.count 
    total_rating/num_of_reviews
  end

  def all_review_content # -- Helper method, return all review content
    reviews.map { |review| review.content }
  end

  def longest_review # returns the longest review content for a given restaurant
    all_review_content.sort.pop()
  end

  def self.all_restaurant
    Review.all.map { |review| review.restaurant }
  end

  def self.find_by_name(name) # given a string of restaurant name, returns the first restaurant that matches
    self.all_restaurant.find { |restaurant| restaurant.name == name }
  end

end # End of Restaurant Class
