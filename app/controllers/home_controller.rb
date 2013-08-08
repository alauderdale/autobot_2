class HomeController < ApplicationController
  def index
    @users = User.all
    @cars = Car.order()
  end
end
