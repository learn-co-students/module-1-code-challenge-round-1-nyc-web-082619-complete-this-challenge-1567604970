class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = full_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select {|reviews| reviews.customer_name == self}.count
  end

  def restaurants
    reviewed_restaurants = Review.all.select {|reviews| reviews.customer_name == self}
    reviewed_restaurants.select {|restaurant| restaurant.restaurant_name.name}
  end

  def self.find_by_name(name)
    self.all.find {|names| names.full_name == self}
  end

  def self.all_names
    self.all.map{|customer| customer.full_name}
  end

  def self.find_all_by_first_name(name)
    self.all.map{|customer| customer.first_name == name}
  end

end
