class SpotsController < ApplicationController
	def index
		@spots = Spot.all
		render rabl: @spots
	end

	def show
    @spot = Spot.find(params[:id])
    render rabl: @spot
	end
end
