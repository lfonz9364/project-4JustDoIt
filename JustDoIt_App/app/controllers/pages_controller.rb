class PagesController < ApplicationController
  def home
  end

  def message
    @cars = Car.all
    @current_location = []

    if params[:lat] != @current_location[0] && params[:lat].present?
      @current_location << params[:lat]
      @current_location << params[:lng]
      byebug
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
