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
    Review.all.count do |review| 
      review.customer == self
    end
  end

  def restaurants
    arr = Review.all.select do |review|
      review.customer == self
    end
    arr.map do |review| 
      review.restaurant
    end
  end

  def self.find_by_name(name)
    seperate = name.split " "
    first = seperate[0]
    last = seperate[1]
    self.all.select do |cust| 
      cust.first_name == first && cust.last_name == last
    end
  end
  def self.find_all_by_first_name(name)
    self.all.select do |cust| 
      cust.first_name == name
    end
  end
  
  def self.all_names
    self.all.map do |cust|
    cust.first_name + " " + cust.last_name
    end
  end

end #end of class
