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

  def search
  	@skills_needed = params[:skills][:skill_ids]
  	@windows_needed = params[:windows][:window_ids]
  	@tutor_matches = Appointment.find_matches(@skills_needed, @windows_needed)
    render 'appointment/results'
  end

end