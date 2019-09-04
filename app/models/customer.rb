class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    i = 0
    Review.all.each do |review|
      # binding.pry
      if review.customer.first_name == self.first_name && review.customer.last_name == self.last_name
        i += 1
      end
    end
    i
  end

  def restaurants
    arr_of_restaurants = []
    Review.all.each do |review|
      if  review.customer.first_name == self.first_name && review.customer.last_name == self.last_name
        arr_of_restaurants << review.restaurant.name
      end
    end
    arr_of_restaurants.uniq
  end

  def self.find_by_name(name)
    first = name.split.first
    last = name.split.last
    
    self.all.find do |customer|
      customer.first_name == first && customer.last_name == last
    end   
  end
  
  def self.find_all_by_first_name(name)
    first = name.split.first
    
    self.all.select do |customer|
      customer.first_name == first 
    end   
  end



end #end of Customer Class
