class Rating < ActiveRecord::Base
  belongs_to :spot
  belongs_to :user
  attr_accessible :user_id, :clean, :ground, :play, :water
end
