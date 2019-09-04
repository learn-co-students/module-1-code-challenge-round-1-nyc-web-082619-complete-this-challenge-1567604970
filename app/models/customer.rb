class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    # @content = content
    # @rating = rating
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end


    # - `Customer#add_review(restaurant, content, rating)`
  # - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), 
  # creates a new review and associates it with that customer and restaurant.

  # def add_review(restaurant, content, rating)
  #   Review.new(self, restaurant)
  # end
  
  def self.all
    @@all
  end
  
end
