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
    total, sum = 0, 0

    reviews.each do |review|
      total += 1
      sum += review.rating
    end

    sum / total
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
