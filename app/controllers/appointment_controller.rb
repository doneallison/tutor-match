class AppointmentController < ApplicationController
  def show
  end

  def index
    if current_tutor
      @tutor = current_tutor
    else
      @student = current_student
    end
  end
end
