class Api::LocationsController < ApplicationController

  def index
    #
    # @cars = Car.find_by(id: params[:id])
    @cars = Car.all
    render json: @cars
  end


end
