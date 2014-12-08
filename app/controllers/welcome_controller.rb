class WelcomeController < ApplicationController
  layout "welcome_index"
  before_filter :find_tutor_or_student

  def index
    if logged_in?
      render layout: "appointment"
    else
      render layout: "welcome_index"
    end
  end

  def find_tutor_or_student
    if current_tutor
      @tutor = current_tutor
      @user = current_tutor
    else
      @student = current_student
      @user = current_student
    end
  end
end

