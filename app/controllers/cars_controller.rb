class CarsController < ApplicationController

  def index
      @cars = Car.order('make ASC')
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    if current_user
      @car = Car.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @car = Car.new(params[:car])
    @car.user_id = current_user.id
    if @car.save
    #If save succeeds return to list action
      redirect_to root_path, :notice => "Car Added"
    #if form fails, redisplay form so user can fix problems
    else
      flash[:alert]= "Please check the fields and try again"
      render :action => :new

    end
  end

  def edit
    @car = Car.find(params[:id])
    if current_user && current_user.id == @car.user_id

    else
      redirect_to new_user_session_path
    end
  end

  def update_car
    # Find object using form parameters
    @car = Car.find(params[:id])
    # Update the object
    if @car.update_attributes(params[:car])
      # If update succeeds, redirect to the list action
      redirect_to car_path, :notice => "Car Updated"
    else
      # If save fails, redisplay the form so user can fix problems
      render('edit')
    end
  end

  def delete
    @car = Car.find(params[:id])
  end

  def destroy_car
    car = Car.find(params[:id])
    car.destroy
    redirect_to root_path, :notice => "Car Deleted"
  end

  def search

  end


end

