class SpotsController < ApplicationController
	def index
	  @spots = Spot.includes([:ratings, :user])
	  render rabl: @spots
	end

	def show
    @spot = Spot.includes([:ratings, :comments, :user]).find(params[:id])
    render rabl: @spot
	end

	def create
	  @spot = Spot.create(params[:spot])
	  
	  unless params[:spot_image].empty?
	  	encoded_string = Base64.decode64(params[:spot_image].gsub("data:image/jpeg;base64,", ""))
	  	
	  	spot_image = SpotImage.new({:spot_id => @spot.id, :user_id => 1})
	    spot_image.image = StringIO.new(encoded_string).extend(StringIoHelper)
    	spot_image.save
    end

	  render rabl: @spot
	end
end
