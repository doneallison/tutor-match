class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method def logged_in?
    !!current_student #double negation to convert to boolean
  end

  helper_method def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id] #memoized
  end

end
