class TutorController < ApplicationController
  def new
    @tutor = Tutor.new
    session[:is_tutor] = true
    redirect_to '/auth/github'
  end

  def edit
    @tutor = current_tutor
  end

  def update
    # binding.pry
    tutor_params = params.require(:tutor).permit(:name, :email, :slack, :github, :bio, :employer, :flatiron_class, :skill_ids => [])
    # @tutor = current_tutor
    # @tutor.name = params[:tutor][:name]
    # @tutor.email = params[:tutor][:email]
    # @tutor.slack = params[:tutor][:slack]
    # @tutor.github = params[:tutor][:github]
    # @tutor.bio = params[:tutor][:bio]
    # @tutor.employer = params[:tutor][:employer]
    # @tutor.flatiron_class = params[:tutor][:flatiron_class]
    # @tutor.save
    current_tutor.update(tutor_params)

    redirect_to appointment_index_path

  end

  def index
  end

  def show

  end
end