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

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  #num reviews method returns total number of reviews that a 
  #customer has authored

  #helper method finds all reviews associated w/ customer 

  def find_reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    self.find_reviews.count
  end

  #used the helper method from above 

  def restaurants
    reviews = self.find_reviews
    reviews.map do |review| 
      review.restaurant
    end
  end


  # def self.find_by_name(name)
  #   name.split.map {|name| name}
  #   first = name.split.first 
  #   last = name.split.last
  #   if self.all.find {|customer| customer.first_name == first } && 
  #   self.all.find {|customer| customer.last_name == last }
      
  # end

  def self.find_all_by_first_name(name)
    self.all.select { |customer| customer.first_name == name}

  end


  def self.all
    @@all 
  end
end
