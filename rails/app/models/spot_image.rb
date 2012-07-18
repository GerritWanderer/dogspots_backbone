class SpotImage < ActiveRecord::Base
  belongs_to :spot
  attr_accessible :user

  attr_accessible :image
  has_attached_file :image, :styles => { :thumb => "100x100>" }
end
