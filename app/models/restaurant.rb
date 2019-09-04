class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map(&:customer).uniq
  end

  def average_star_rating
    total = reviews.reduce([0.0, 0]) do |sum_total, review|
      [sum_total[0] + review.rating, sum_total[1] + 1]
    end #Creates an array that keeps track of the sum_total in [0] and the total in [1].
    total[0] / total[1]
  end

  def longest_review
    reviews.max_by { |review| review.content.length }
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find { |restaurant| restaurant.name == name }
  end
end
