class PagesController < ApplicationController
  def home
  end

  def message
    @cars = Car.all
    @current_location = []
    @current_location << params[:current_latitude]
    @current_location << params[:current_longitude]

    byebug
    
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
