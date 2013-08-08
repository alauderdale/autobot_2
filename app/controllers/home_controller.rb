class HomeController < ApplicationController
  def index
    @users = User.order('name ASC')
    @cars = Car.order('make ASC')
  end
end
