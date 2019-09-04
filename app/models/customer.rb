class Customer
  @@all = []
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates
  # a new review and associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  ## HELPER METHOD: returns array of all review instances of a customer
  def customer_reviews
    Review.all.select {|r| r.customer == self}
  end

  #Returns the total number of reviews that a customer has authored
  def num_reviews
    self.customer_reviews.count
  end

  #Returns a **unique** array of all restaurants a customer has reviewed
  def restaurants
    self.customer_reviews.map {|r| r.restaurant.name}.uniq
  end

  #- given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(name)
    Customer.all_names.find {|person| person == name}
  end
  
  #- given a string of a first name, returns an **array** containing all customers with that first name
  def self.find_all_by_first_name(name)
    Customer.all.select {|cust| cust.first_name == name}
  end
  
  #- should return an **array** of all of the customer full names
  def self.all_names
    Customer.all.map {|cust| "#{cust.first_name} #{cust.last_name}"}
  end
  

  def self.all
    @@all
  end
end
