class TutorController < ApplicationController
  layout "appointment"

  def new
    @tutor = Tutor.new
    session[:is_tutor] = true
    redirect_to '/auth/github'
  end

  def edit
    @tutor = current_tutor
  end

  def update
    current_tutor.update(tutor_params)
    redirect_to appointment_index_path
  end

  def index
  end

  def show
    @tutor = Tutor.find(params[:id])
  end

  private

    def tutor_params
      params.require(:tutor).permit(:name, :email, :slack, :github, :bio, :employer, :flatiron_class, :skill_ids => [], :window_ids => [])

    end

end