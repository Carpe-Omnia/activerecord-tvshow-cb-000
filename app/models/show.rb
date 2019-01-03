class Show < ActiveRecord::Base
  def self.highest_rating
    show = Show.maximum("rating")
  end
  def self.most_popular_show
    high_rate = highest_rating
    show = Show.find_by(rating: high_rate)
  end
  def self.lowest_rating
    show = Show.minimum("rating")
  end
  def self.least_popular_show
    low_rate = lowest_rating
    show = Show.find_by(rating: low_rate)
  end
  def self.ratings_sum
    Show.sum("rating")
  end
  def self.popular_shows
    Show.where("rating > 5")
  end
  def self.shows_by_alphabetical_order
    Show.order("name ASC")
  end
end
