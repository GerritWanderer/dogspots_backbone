class User < ActiveRecord::Base
  has_many :spots
  has_many :ratings
  has_many :comments
  
  attr_accessible :email, :name
end
