class SessionController < ApplicationController

  def new
    redirect_to '/auth/github'
  end

  def create
    @auth_hash = auth_hash
    if session[:is_tutor]
      @tutor = Tutor.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid]) || Tutor.create_from_omniauth(auth_hash)
      if @tutor
           session[:tutor_id] = @tutor.id
           redirect_to edit_tutor_path(current_tutor)
           # render 'tutor/edit'
      else
           redirect_to root_url
      end
    else
      @student = Student.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid]) || Student.create_from_omniauth(auth_hash)
      if @student
           session[:student_id] = @student.id
           redirect_to edit_student_path(current_student)
           # render 'student/edit'
      else
           redirect_to root_url
      end
    end
  end

  def destroy
    reset_session
    redirect_to root_url
  end

  protected

    def auth_hash
      request.env['omniauth.auth']
    end
end
