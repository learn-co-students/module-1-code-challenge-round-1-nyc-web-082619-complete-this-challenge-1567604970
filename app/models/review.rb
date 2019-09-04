
## I like to write long variable name and comment method if got time 

class Review
    attr_accessor :content, :rating
    attr_reader :customer, :restaurant # can't be change after initialize 
    @@all = [] # store al lthe Review made by customer to restaurent

    def initialize(customer,restaurant, content, rating)
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

