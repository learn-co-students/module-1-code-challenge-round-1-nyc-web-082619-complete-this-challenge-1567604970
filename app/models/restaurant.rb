class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end 

  # def average_star_rating
  #   reviews_count = reviews.count.to_f
  #   stars_count = reviews.rating.inject {|sum, n| sum + n}.to_f
  #   average_rating = (reviews_count * stars_count) / 100
  # end 

  # def longest_review
  #   longest = reviews.sort { |a,b| a.length <=> b.length }.first
  #   longest.map {|word| word}
  # end 

  def self.find_by_name

  end 

  def self.all
    @@all 
  end 

end
