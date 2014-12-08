class AppointmentController < ApplicationController

  layout "appointment", only: [:index]
  before_filter :find_tutor_or_student#, only: [:index, :search, :show]

  def index
  end

  def cancel
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
    @window = Window.find(params[:window])
    @appointment = Appointment.create(tutor_id: @tutor.id, window_id: @window.id, confirmed: false)
    @student.appointments << @appointment
    # StudentAppointment.create(student_id: @student.id, appointment_id: @appointment.id)
    redirect_to root_path
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