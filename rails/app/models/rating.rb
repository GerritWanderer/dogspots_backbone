class Rating < ActiveRecord::Base
  belongs_to :spot
  belongs_to :user
  attr_accessible :clean, :ground, :play, :water
end
