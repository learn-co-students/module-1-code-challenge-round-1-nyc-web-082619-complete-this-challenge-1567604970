class Review
  
    ####     Variables     #####
  
    attr_reader :customer, :restaurant, :content, :rating
    @@all = []

    ####     Initialize     #####

    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating

        @@all << self
    end

    ####     Class Methods     #####

    def self.all
        @@all
    end
end

