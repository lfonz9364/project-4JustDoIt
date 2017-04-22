class CarsController < ApplicationController
  def new
  end

  def create
    car = Car.new
    car.user_id = session[:id]
    car.description = params[:description]
    car.seat_number = params[:seat_number]
    car.meeting_point = params[:meeting_point]
    car.suburb = params[:suburb]
    car.smoker_friendly = params[:smoker_friendly]
    date = params[:date].split('-')
    time = params[:time].split(':')
    year = date[0].to_i
    month = date[1].to_i
    day = date[2].to_i
    hour = time[0].to_i
    min = time[1].to_i
    car.date_time = Time.gm(year, month, day, hour, min)

    if car.save
      redirect_to '/home'
      # redirect_to "/cars/show/#{ car.id }"
    else
      redirect_to "/cars/new"
    end
  end

  def destroy
    car = Car.find_by(user_id: session[:id]).destroy
    redirect_to '/home'
  end

  def join
    passenger = Passenger.new
    passenger.user_id = session[:id]
    passenger.car_id = params[:id]
    passenger.save
    redirect_to '/cars'
  end

  def unjoin
    passenger = Passenger.find_by(user_id: session[:id]).destroy
    redirect_to '/cars'
  end

  def show
    @car = Car.find(params[:id])
    @passengers = @car.passenger
  end

  def edit
  end

  def update
    car = Car.find(params[:id])
    car.user_id = session[:id]
    car.description = params[:description]
    car.seat_number = params[:seat_number]
    car.meeting_point = params[:meeting_point]
    car.suburb = params[:suburb]
    car.smoker_friendly = params[:smoker_friendly]
    date = params[:date].split('-')
    time = params[:time].split(':')
    year = date[0].to_i
    month = date[1].to_i
    day = date[2].to_i
    hour = time[0].to_i
    min = time[1].to_i
    car.date_time = Time.gm(year, month, day, hour, min)

    if car.save
      redirect_to "/cars/show/#{ car.id }"
    else
      redirect_to "/cars/edit/#{ car.id }"
    end
  end

  def remove
    passenger = Passenger.find(params[:id])
    car_id = passenger.car_id
    passenger.destroy
    redirect_to "/cars/show/#{ car_id }"
  end

  def filter
  end

  def filtering
    @cars = Car.where(suburb: params[:suburbfilter])
    render :filtered
  end
end
