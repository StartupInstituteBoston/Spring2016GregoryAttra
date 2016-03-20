class RestaurantsController < ApplicationController
  #before_filter :authenticate_owner!

	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = current_owner.restaurants.build
    render layout: false if request.xhr?
	end

  def create
    @restaurant = current_owner.restaurants.build(restaurant_params)
		@restaurant.save
		redirect_to restaurants_url
	end

	def show
		@restaurant = Restaurant.find(params[:id])
    render layout: false if request.xhr?
	end

  def edit
    @restaurant = current_owner.restaurants.find(params[:id])
    render layout: false if request.xhr?
  end

	def update
		@restaurant = current_owner.restaurants.find(params[:id])
		@restaurant.update_attributes(restaurant_params)
		redirect_to restaurants_url
	end

	def destroy
		@restaurant = current_owner.restaurants.find(params[:id])
		@restaurant.destroy
    redirect_to restaurants_url
	end

	private
  def restaurant_params
		params.require(:restaurant).permit(:id, :address, :city, :state, :zipcode, :description, :name, :phone)
	end
end
