class Restaurant
  
  ####     Variables     #####
  
  attr_reader :name
  @@all = []

  ####     Initialize     #####

  def initialize(name)
    @name = name

    @@all << self
  end

  ####     Class Methods     #####
  
  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|restaurant|restaurant.name == name}
  end

  ####     Instance Methods     #####

  def reviews
    Review.all.select{|review|review.restaurant == self}
  end 
  
  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  def ratings
    self.reviews.map{|review| review.rating}
  end

  def average_star_rating
    self.ratings.reduce(:+)/self.ratings.length.to_f
  end
  
  def review_content_array
    self.reviews.map{|review| review.content}
  end
  
  def longest_review
    self.review_content_array.max_by{|review_content|review_content.length}
  end
end
