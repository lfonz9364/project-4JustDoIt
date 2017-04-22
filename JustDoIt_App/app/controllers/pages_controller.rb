class PagesController < ApplicationController
  def home
  end

  def message
    @cars = Car.all
  end

end
