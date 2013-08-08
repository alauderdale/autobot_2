class SearchController < ApplicationController
	def index
		# @search_cars = Car.search (params[:search], car_model: params[:search] ).all
		@search_cars = Car.search(params[:search]).all
		@search_users = User.search(name: params[:search]).all
	end
end
