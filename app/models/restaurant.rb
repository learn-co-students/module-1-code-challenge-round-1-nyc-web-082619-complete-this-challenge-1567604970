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

  def customers
    arr_of_customers = []
    Review.all.each do |review|
      binding.pry
      if  review.restaurant.name == self.name
        arr_of_customers << review.customer
      end
    end
    arr_of_customers.uniq
  end

  def average_star_rating
    num_of_reviews = 0
    total_review_value = 0
    Review.all.each do |review|
      if review.restaurant.name == self.name
        num_of_reviews += 1
        total_review_value += review.rating
      end
    end
    average_rating = total_review_value / num_of_reviews.to_f
  end

  def longest_review
    length = 0
    content = 0
    Review.all.each do |review|
      if review.restaurant.name == self.name
        if review.content.length > length
          length = review.content.length
          content = review.content
        end
      end
    end
    content
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end   
  end

end #end of Restauraunt class
