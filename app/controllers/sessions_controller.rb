class SessionsController < ApplicationController

  def new

  end

  def create
    session.clear
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to guests_path
    else
      flash[:alert] = "Information invalid"
      redirect_to "/"
    end
  end

end
