class Review
    attr_reader :restaurant_name, :customer_name
    attr_accessor  :content, :rating

    @@all = []

    def initialize(customer_name, restaurant_name, content, rating)
        @customer_name = customer_name
        @restaurant_name = restaurant_name
        @content = content
        @rating = rating
        
        @@all << self
    end

    def self.all 
        @@all
    end

    def customer
        self.all.select{|review| review}
    end
  
end

