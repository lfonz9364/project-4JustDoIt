class MapsController < ApplicationController

  def map
    if params[:start_address].present?
      Geocoder.configure(:units => :km)
      @start_address_coordinates = Geocoder.coordinates(params[:start_address])
      @destination_address_coordinates = Geocoder.coordinates(params[:destination_address])
      @distance = Geocoder::Calculations.distance_between(@start_address_coordinates, @destination_address_coordinates).round(2)
      render :map
    end
  end
end
