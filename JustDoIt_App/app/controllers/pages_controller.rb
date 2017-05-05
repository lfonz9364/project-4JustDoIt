class PagesController < ApplicationController
  def home
  end

  def message
    current_user = User.find(session[:id])

    if current_user.passenger.present?
      @current_car = Car.find(current_user.passenger.car_id)
      if params[:suburbfilter].present?
        @cars = Car.where('suburb = ? AND id != ?', params[:suburbfilter].titlecase, @current_car.id)
      else
        @cars = Car.where('id != ?', @current_car.id)
      end
    else
      if params[:suburbfilter].present?
        @cars = Car.where('suburb = ?', params[:suburbfilter].titlecase)
      else
        @cars = Car.all
      end
    end

    if current_user.passenger.present?
      @count = 1
      car = Car.find(current_user.passenger.car_id)
      @pin_meet_point = car
    else
      @count = 0
      @pin_meet_point = Car.all
    end

    render :message

    @distances = []

    @carlocation = Car.all

    @carlocation.each do |i|

      meeting_point = []
      meeting_point << i.latitude
      meeting_point << i.longitude

      Geocoder.configure(:units => :km)
      @distances << Geocoder::Calculations.distance_between(current_location, meeting_point).round(2)
    end


  end
end
