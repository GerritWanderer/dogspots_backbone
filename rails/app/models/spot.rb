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
    return "/images/spot_images_shadow.gif" if self.spot_images.empty?
    self.spot_images.shuffle.first.image.url(:thumb)
  end
end
