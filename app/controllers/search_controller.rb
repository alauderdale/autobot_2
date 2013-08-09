class SearchController < ApplicationController
	def index
		# @search_cars = Car.search (params[:search], car_model: params[:search] ).all
		@search_cars = Car.search(params[:search])
		@search_users = User.search(name: params[:search]).all
		@search = params[:search]
	end
end
