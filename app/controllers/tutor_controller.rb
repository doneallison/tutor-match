class TutorController < ApplicationController
  def new
    @tutor = Tutor.new
    session[:is_tutor] = true
    redirect_to login_path
  end

  def edit
    @tutor = current_tutor
  end

  def update
    # @tutor = tutor.find(params[:id])
    @tutor = current_tutor
    @tutor.name = params[:tutor][:name]
    @tutor.email = params[:tutor][:email]
    @tutor.slack = params[:tutor][:slack]
    @tutor.github = params[:tutor][:github]
    @tutor.bio = params[:tutor][:bio]
    @tutor.save

    redirect_to appointment_index_path
  end
end
