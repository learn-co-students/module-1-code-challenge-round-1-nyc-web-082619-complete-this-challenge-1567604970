
## I like to write long variable name and comment method if got time 

class Customer
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  

  def add_review(restaurant, content, rating)
    Review.new(self,restaurant,content,rating)
  end

  def all_my_review # --- helper method 
    Review.all.select { |review| review.customer == self } 
  end

  def num_reviews # Returns the total number of reviews that a customer has authored
  self.all_my_review.count
  end

  def restaurants # Returns a unique array of all restaurants a customer has reviewed
    all_restaurants = self.all_my_review.map { |review| review.restaurant}
    all_restaurants.uniq 
  end

  def self.all_customer # -- Helper method, return all customer
    Review.all.map { |review| review.customer }
  end

  def self.find_by_name(name) # given a string of a full name, returns the first customer whose full name matches
   self.all_customer.find { |customer| customer.full_name == name }
  end 

  def self.find_all_by_first_name(name) # given a string of a first name, returns an array containing all customers with that first name
    all_customer = self.all_customer.select {|customer| customer.first_name == name }
    all_customer.uniq # to reduce same multiple customer
  end

  def self.all_names # should return an array of all of the customer full names
    self.all_customer.map { |customer| customer.full_name}
  end


end # End of customer class 
