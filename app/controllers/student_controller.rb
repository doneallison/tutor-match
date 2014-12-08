class StudentController < ApplicationController
  layout "appointment"
  before_filter :find_tutor_or_student#, only: [:index, :search, :show]

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
    @students_grid = initialize_grid(Student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    current_student.update(student_params)
    UserMailer.welcome_email(current_student).deliver
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

  private

    def student_params
      params.require(:student).permit(:name, :email, :slack, :github, :bio)

    end

end