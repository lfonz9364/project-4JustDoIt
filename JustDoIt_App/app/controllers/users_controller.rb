class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.phone = params[:phone]
    user.company = params[:company]
    user.password = params[:password]

    if user.save
      redirect_to '/'
    else
      redirect_to '/users/new'
    end
  end

  def destroy
  end
end
