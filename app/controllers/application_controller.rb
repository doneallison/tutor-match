class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in?, :current_student, :current_tutor

  def logged_in?
    !!current_student || !!current_tutor#double negation to convert to boolean
  end

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def current_tutor
    @current_tutor ||= Tutor.find(session[:tutor_id]) if session[:tutor_id]
  end

end
