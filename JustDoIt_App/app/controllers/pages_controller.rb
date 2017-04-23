class PagesController < ApplicationController
  def home
  end

  def message
    @cars = Car.all

    current_user = User.find(session[:id])

    if current_user.passenger != nil
      @current_car = Car.find(current_user.passenger.car_id)
    end

    @current_location = []

    if params[:lat] != @current_location[0] && params[:lat].present?
      @current_location << params[:lat]
      @current_location << params[:lng]
    end

    @distances = []

    @cars.each do |i|
      meeting_point = []
      meeting_point << i.latitude
      meeting_point << i.longitude
      Geocoder.configure(:units => :km)
      @distances << Geocoder::Calculations.distance_between(@current_location, meeting_point).round(2)
    end
  end
end
