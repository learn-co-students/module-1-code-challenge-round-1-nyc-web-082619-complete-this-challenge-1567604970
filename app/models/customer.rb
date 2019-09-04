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

  def full_name
    "#{first_name} #{last_name}"
  end
  
  def self.find_by_name(name)
    their_name = self.find {|name| name.full_name}
    full_name.their_name
  end

  def self.find_all_by_first_name(name)
    self.all.select {|name| name.first}
  end

  def self.all_names(name_all)
    self.all.map {|name_all| name_all.all_names == self}
  end
  
  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating)
  end

  def num_reviews
    
  end
end
