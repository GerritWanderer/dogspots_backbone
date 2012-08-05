class Spot < ActiveRecord::Base
  has_many :ratings
  has_many :comments
  has_many :spot_images
  belongs_to :user

  attr_accessible :user_id, :city, :latitude, :longitude, :street, :text, :title, :zip

  def average_rating
  	return 0 if self.ratings.empty?
  	self.ratings.collect { |r| r.ground }.sum / self.ratings.size
  end

  def spot_image
    path = self.spot_images.empty? ? "/images/spot_images_shadow.gif" : self.spot_images.shuffle.first.image.url(:thumb)
    return "http://0.0.0.0:3000#{path}" unless Rails.env.production? 
    return "http://www.dogspots.de#{path}" if Rails.env.production?
  end
end
