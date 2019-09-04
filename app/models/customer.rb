class Customer
  attr_reader :first_name, :last_name
  attr_accessor :review

  @@all = []

  def initialize(first_name, last_name, review)
    @first_name = first_name
    @last_name  = last_name
    @review = review

    @all << self 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(review)
    review = Review.new(self, review)
  end 

  def num_reviews
    self.all.map{|review| review.reiews}
  end

  def restaurants 
    self.all.map{|reviews| reviews.restaurants}.uniq
  end 

  def self.find_by_name(full_name)
    self.all.find{|name| name.full_name}
  end 

  def self.find_all_by_first_name(name)
    self.all.select{|first| first.first_name}
  end  

  def self.all_names
    self.all.map{|reviews| reviews.full_name}
  end
  
  def self.all
    @all
  end

end #end of customer class
