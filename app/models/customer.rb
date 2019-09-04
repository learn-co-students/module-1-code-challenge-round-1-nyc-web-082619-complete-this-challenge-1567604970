class Customer
  ####     Variables     #####
 
  attr_reader :first_name, :last_name
  @@all = []

  ####     Initialize     #####

  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name  = last_name.capitalize
    
    @@all << self
  end
  
  ####     Class Methods     #####

  def self.all
    @@all
  end
  
  def self.find_by_name(full_name)
    self.all.find{|customer|customer.full_name == full_name}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select{|customer|customer.first_name == first_name}
  end

  def self.all_names
    self.all.map{|customer| customer.full_name}
  end

  ####     Instance Methods     #####

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select{|review|review.customer == self}
  end
  
  def restaurants
    self.reviews.map{|review| review.restaurant}.uniq
  end
  
  def num_reviews
    self.reviews.length
  end
end
