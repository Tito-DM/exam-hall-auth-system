class ApplicationController < ActionController::Base
  before_action :require_user, only:[:verification, :update,:destroy]
   protect_from_forgery with: :exception
  #make those function availeble to views
  helper_method :current_student, :logged_in?, :user_name, :current_user,:settint_api
  #those methods are availeble to all controler
  def settint_api
    @setting =  $setting
  end
  def current_student
    @current_student =$student
  end
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    #covert current_user to bool using !!
    !!current_user
  end

  def require_user
    unless logged_in?
      flash[:danger] = 'You must be logged in to perform that action'
      redirect_to root_path
    end
  end

end
