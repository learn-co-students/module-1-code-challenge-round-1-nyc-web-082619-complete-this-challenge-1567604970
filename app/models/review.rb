class Review

    attr_accessor :customer, :restaurant, :review, :rating
  
    @@all = []

    def initialize(customer, restaurant, review, rating)
        @customer = customer
        @restaurant = restaurant
        @review = review
        @rating = rating
    

        @@all << self
    end

    def self.all
        @@all
      end
end

