class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def find_reviews
    Review.all.select {|review| review.customer == self}
  end 

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end 

  def num_reviews
    find_reviews.count
  end 

  def restaurants
    find_reviews.map {|review| review.restaurant}.uniq
  end 

  def self.all
    @@all
  end 

  def self.find_by_name(full_name)

  end 

  def self.find_all_by_first_name(first_name)

  end 

  def self.all_names

  end
end
