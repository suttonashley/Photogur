class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to root_path
      flash[:error] = "You are already logged in."
    end
  end

  def login
      user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to '/login'
      # flash:[:notice] = "You are logged in already"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to '/login'
  end
end
