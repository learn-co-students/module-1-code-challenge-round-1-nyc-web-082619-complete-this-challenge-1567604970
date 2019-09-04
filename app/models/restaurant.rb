class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def reviews
    arr = Review.all.select {|review| review.restaurant == self}
  end

  def customers 
      arr = self.reviews
      arr.map {|review| review.customer}
  end

 def average_star_rating
  arr = self.reviews.map do |review| 
    review.rating
    end
    arr.reduce(0.0) do |sum, r| 
    sum + r 
    end / arr.size
  end

  def longest_review
    arr = self.reviews.map {|review| review.content}
    arr.max_by do |el| 
      el.size
    end
  end

  def self.find_by_name(name)
    self.all.find do |rest|
      rest.name == name
    end
  end
  
end#end of class
