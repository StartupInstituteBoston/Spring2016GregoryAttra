class RestaurantsController < ApplicationController
  	def index 
  		@restaurants = Restaurant.all
  	end

  	def new
  		@restaurant = Restaurant.new
  	end

    def create
  		@restaurant = Restaurant.new(restaurant_params)
  		@restaurant.save
  		redirect_to @restaurant
  	end

  	def show
  		@restaurant = Restaurant.find(params[:id])
  	end

    def edit 
      @restaurants = Restaurant.find(params[:id])
    end

  	def update
  		@restaurant = Restaurant.find(params[:id])
  		@restaurant.update_attributes(restaurant_params)
  		redirect_to @restaurant
  	end

  	def destroy
  		@restaurant.find(params[:id])
  		@restaurant.destroy
  	end

  	private 
    def restaurant_params
			params.require(:restaurant).permit(:id, :address, :city, :state, :zipcode, :description, :name, :phone)	
  	end

end
