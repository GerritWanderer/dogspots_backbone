class Comment < ActiveRecord::Base
  belongs_to :spot
  belongs_to :user
  attr_accessible :user_id, :spot_id, :text
end
