class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
  end

  

  def reviews 
    Review.all.select {|review| review.restaurant == self}
  end 

  def customers
    reviews_array = self.reviews
    reviews_array.map do |review|
      review.customer
    end
  end
  
  def average_star_rating
    reviews = self.reviews
    ratings = reviews.map { |review| review.rating}
    (ratings.sum.to_f)/(ratings.length)
  end

  def longest_review 
    reviews = self.reviews 
    review_content = reviews.map { |review| review.content}
    review_content.max_by { |content| content.length}
  end

  def self.find_by_name(name)
    Restaurant.all.select { |restaurant| restuarant.name == name}
  end

  def self.all
    @@all
  end

end

