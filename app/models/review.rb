class Review
    attr_reader :full_name, :restaurant
    attr_accessor :review

    @all = []

    def initialize(full_name, restaurant, review)
        @full_name = full_name
        @restaurant = restaurant
        @review = review

        @@all << self 
    end

    def full_review
        

    def self.all
        @@all
    end 
  
end #end of review class

