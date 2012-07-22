class Spot < ActiveRecord::Base
  has_many :ratings
  has_many :comments
  has_many :spot_images
  belongs_to :user

  attr_accessible :user_id, :city, :latitude, :longitude, :street, :text, :title, :zip
end