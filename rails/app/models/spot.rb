class Spot < ActiveRecord::Base
  attr_accessible :city, :latitude, :longitude, :street, :text, :title, :zip
end
