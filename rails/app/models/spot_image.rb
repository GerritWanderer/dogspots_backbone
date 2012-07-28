class SpotImage < ActiveRecord::Base
  belongs_to :spot
  belongs_to :user

  attr_accessible :image, :user_id
  has_attached_file :image, :styles => { :thumb => "100x100>" }
end
