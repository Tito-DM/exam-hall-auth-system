class ApplicationController < ActionController::Base
   protect_from_forgery with: :exception
  #make those function availeble to views
  helper_method :current_student, :logged_in?, :user_name
  #those methods are availeble to all controler

  def student_name
     @current_student = Student.find(session[:student_id]) if session[:student_id]
     @current_student.name
  end
  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

end
