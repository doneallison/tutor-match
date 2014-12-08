class TutorController < ApplicationController
  layout "appointment"
  before_filter :find_tutor_or_student#, only: [:index, :search, :show]

  def new
    @tutor = Tutor.new
    session[:is_tutor] = true
    redirect_to '/auth/github'
  end

  def edit
    @tutor = current_tutor
    render layout: 'form'
  end

  def update
    current_tutor.update(tutor_params)
    redirect_to root_path
  end

  def index
  end

  def show
    @tutor = Tutor.find(params[:id])
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

    def tutor_params
      params.require(:tutor).permit(:name, :email, :slack, :github, :bio, :employer, :flatiron_class, :skill_ids => [], :window_ids => [])

    end

end