class RestaurantsController < ApplicationController
  before_filter :authenticate_owner!
  	def index 
  		@restaurants = Restaurant.all
  	end

  	def new
  		@restaurant = Restaurant.new
      render layout: false if request.xhr?
  	end

    def create
  		@restaurant = Restaurant.new(restaurant_params)
  		@restaurant.save
  		redirect_to re
  	end

  	def show
  		@restaurant = Restaurant.find(params[:id])
      render layout: false if request.xhr?
  	end

    def edit 
      @restaurant = Restaurant.find(params[:id])
      render layout: false if request.xhr?
    end

  	def update
  		@restaurant = Restaurant.find(params[:id])
  		@restaurant.update_attributes(restaurant_params)
  		redirect_to restaurants_url
  	end

  	def destroy
  		@restaurant = Restaurant.find(params[:id])
  		@restaurant.destroy
      redirect_to restaurants_url
  	end

  	private 
    def restaurant_params
			params.require(:restaurant).permit(:id, :address, :city, :state, :zipcode, :description, :name, :phone)	
  	end
end
