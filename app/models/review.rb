class Review
    @@all = []
    attr_accessor :customer, :restaurant
    attr_reader :content, :rating
    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all << self
    end
   
    def self.all
        @@all
    end
end

