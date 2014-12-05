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
    @appointment = Appointment.create(tutor_id: @tutor.id, confirmed: false)
    StudentAppointment.create(student_id: @student.id, appointment_id: @appointment.id)
    redirect_to appointment_index_path
  end

end