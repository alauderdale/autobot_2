class HomeController < ApplicationController
  def index
    @users = User.order('name ASC')
    @cars = Car.page(params[:page]).order('make ASC')
  end
end
