class MapsController < ApplicationController

  def map
    if params[:user_address].present?
      Geocoder.configure(:units => :km)
      @user_address_coordinates = Geocoder.coordinates(params[:user_address])
      @destination_address_coordinates = Geocoder.coordinates(params[:meeting_point] + ' ' + params[:suburb])
      @distance = Geocoder::Calculations.distance_between(@user_address_coordinates, @destination_address_coordinates).round(2)
      render :map
    end
  end
end
