class PagesController < ApplicationController
  def home
  end

  def message
    @cars = Car.all
    current_user = User.find(session[:id])

    if current_user.passenger != nil
      @current_car = Car.find(current_user.passenger.car_id)
    end
  end
end
