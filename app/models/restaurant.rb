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

   #helper________________________________________________________
   
   def reviews
     Review.all.select{ |rev| rev.restaurant == self}
   end 
  #instance methods________________________________________________ 
 
   def customers 
     uniq_cus = this_restaurant_reviews.uniq{|my_rev|my_rev.customer.first_name && my_rev.customer.last_name}
     uniq_cus.map{ |u_rev| "#{u_rev.customer.first_name} #{u_rev.customer.last_name}"}
   end

   def average_star_rating
    ratings = self.reviews.map{ |rev| rev.rating}
    ratings.sum / ratings.length
   end

   def longest_review
    review = self.reviews.map{ |rev| rev.review}
    sorted = review.sort_by { |rev| rev.length}
    sorted[-1]
   end
  

end #class end
