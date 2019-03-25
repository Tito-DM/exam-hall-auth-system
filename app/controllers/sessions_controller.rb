class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)

    if user &&  user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to home_verification_path
    else
      flash.now[:danger] = "username or password is wrong"
      render 'new'
    end

  end


  def destroy
  end

end