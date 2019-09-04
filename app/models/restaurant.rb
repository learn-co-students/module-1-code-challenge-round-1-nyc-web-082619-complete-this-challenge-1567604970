class Restaurant
  attr_reader :name

  @all = []
  def initialize(name)
    @name = name

    @@all << self 
  end

  def customers
    self.all.map{|restaurant| restaurant.customer}.uniq
  end

  def reviews
    self.all.map{|reviews| reviews.restaurant}
  end

  # def average_star_rating
  # end

  # def longest_review
  # end



  def self.all
    @@all
  end 

end #end of restaurant class
