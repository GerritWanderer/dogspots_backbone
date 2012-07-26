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
	  render rabl: @spot
	end
end
