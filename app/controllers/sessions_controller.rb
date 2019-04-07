class SessionsController < ApplicationController

  def new
    redirect_to home_verification_path if logged_in?
  end

  def create
    session[:setting] = ""
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
    session[:setting] = ""
    session.delete(:user_id)
    redirect_to root_path, success: "Logged out!"
  end

end