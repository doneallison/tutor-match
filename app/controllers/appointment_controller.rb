class AppointmentController < ApplicationController

  layout "appointment", only: [:index]
  before_filter :find_tutor_or_student#, only: [:index, :search, :show]

  def index
    @appointments_grid = initialize_grid(Appointment, include: [:window, :tutor], joins: :students)
  end

  def cancel
    @appointment = Appointment.find(params[:id])
    @appointment.cancelled = true
    @appointment.save
    #send email
    if current_tutor
      redirect_message = "You have successfully cancelled the appointment you had with #{@appointment.list_students} on #{@appointment.window.name}. #{@appointment.list_students} #{@appointment.students.size == 1 ? "has" : "have"} been notified."
    else
      redirect_message = "You have successfully cancelled the appointment you had with #{@appointment.tutor.name} on #{@appointment.window.name}. #{@appointment.tutor.name} has been notified."
    end
    flash[:notice] = redirect_message
    redirect_to root_path
  end

  def confirm
    @appointment = Appointment.find(params[:id])
    @appointment.confirmed = true
    @appointment.save
    #send email
    if current_tutor
      flash[:notice] = "You have successfully confirmed your appointment with #{@appointment.students.last.name}. #{@appointment.students.last.name} has been notified."
    end
    redirect_to root_path
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
    @appointment = Appointment.create(tutor_id: @tutor.id, window_id: @window.id, confirmed: false, cancelled: false)
    @student.appointments << @appointment
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