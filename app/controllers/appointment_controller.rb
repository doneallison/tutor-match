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
  	@skills_needed = params[:skills][:skill_ids].map { |x| x.to_i }[0..-2]
  	@windows_needed = params[:windows][:window_ids].map { |x| x.to_i }[0..-2]
  	@tutor_matches = Appointment.find_matches(@skills_needed, @windows_needed)
    render 'appointment/results'
  end

  def book
    @student = current_student
    @tutor = Tutor.find(params[:tutor])
    #implement logic that creates appointment between @student and @tutor
    #then redirect somewhere appropriate; perhaps appointment#index
  end

end