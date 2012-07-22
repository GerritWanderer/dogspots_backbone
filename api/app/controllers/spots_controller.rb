class SpotsController < ApplicationController
	def index
		@spots = Spot.all
		render rabl: @spots
	end
end
