class StudentController < ApplicationController
  layout "appointment"


  def new
    @student = Student.new
    session[:is_tutor] = false
    redirect_to '/auth/github'
  end

  def edit
    @student = current_student
    render layout: 'form'
  end

  def index
    @student = current_student
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    current_student.update(student_params)
    UserMailer.welcome_email(current_student).deliver
    redirect_to appointment_index_path
  end

  private

    def student_params
      params.require(:student).permit(:name, :email, :slack, :github, :bio)

    end

end
