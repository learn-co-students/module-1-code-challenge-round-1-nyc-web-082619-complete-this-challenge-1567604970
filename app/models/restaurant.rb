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

  def customers
    temp = Review.all.select{|reviews| reviews.restaurant_name == self}
    #binding.pry
    temp2 = temp.select{|reviews| reviews.customer_name.first_name}
    temp2
  end

  def reviews
    Review.all.select {|reviews| reviews.restaurant_name == self}
  end




def self.find_by_name(name)
  self.all.find {|resturants| resturants.name == name}
end


end
