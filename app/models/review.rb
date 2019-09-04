class Review

attr_reader :customer, :restaurant, :rating, :content

    @@all = [] 

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end 

    def customer
        new = self.all.find {|review| review == self}
        new.map {|review| review.customer}
    end 

    def restaurant
       new = self.all.find {|review| review == self}
       new.map {|review| review.restaurant}
    end

    def self.all 
        @@all
    end 
  
end

