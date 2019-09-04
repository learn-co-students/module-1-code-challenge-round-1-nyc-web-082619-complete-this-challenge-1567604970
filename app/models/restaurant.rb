class Restaurant
 
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find do |restaurant_name|
      restaurant_name == name
    end
  end

  def self.reviews
    all_reviews = Review.all
    my_reviews = all_reviews.select do |review|
      review.customer == self 
    end
    my_reviews.map do |review|
      review
    end
  end  

  def self.all 
    @@all
  end

end
