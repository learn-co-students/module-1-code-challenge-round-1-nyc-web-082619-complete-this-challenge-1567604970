class Review

    attr_reader :author, :restaurant
    attr_accessor :content, :customer, :rating

    @@all = []

    def initialize(author, restaurant, content, customer, rating)
        @customer = customer
        @content = content
        @restaurant = restaurant
        @author = author
        @rating = rating

        @@all << self
    end

    def self.all
        @@all
    end

    def self.customer
        
    end

    def self.restaurant
        
    end
  
end

