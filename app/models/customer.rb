class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.all
    @@all
  end


  #helper________________________________________________________
  def my_reviews
    Review.all.select{ |rev| rev.customer == self}
  end

  #instance methods________________________________________________

  def full_name
    "#{first_name} #{last_name}"
  end


  def add_review(resturant_inst, rest_review, rest_rating)
    Review.new(self, resturant_inst, rest_review, rest_rating)
  end

  def num_reviews
    self.my_reviews.map{ |my_rev| my_rev.review}.length
  end

  def restaurants
    uniq_rest = self.my_reviews.uniq{|my_rev|my_rev.restaurant}
    uniq_rest.map{ |u_rev| u_rev.restaurant.name}
  end

  #class methods______________________________________________

  def self.find_by_name(full_name)
    split_name = full_name.split
    Customer.all.first{ |rev| rev.customer.first_name == split_name[0] && rev.customer.last_name == split_name[1]}
  end

  def self.find_all_by_first_name(first_n)
    Customer.all{ |rev| rev.first_name == first_n}
  end

  def self.all_names(full_name)
    split_name = full_name.split
    Customer.all.select{ |rev| rev.first_name == split_name[0] && rev.last_name == split_name[1]}
  end


end
