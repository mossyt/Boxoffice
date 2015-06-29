class Movie < ActiveRecord::Base
  def self.search(search)
  where("movie_title LIKE ?", "%#{search}%")
  end
  has_many :parts
  has_many :actors, through: :parts
  

end
