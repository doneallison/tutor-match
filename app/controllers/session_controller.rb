class SessionController < ApplicationController

  def new
    redirect_to '/auth/github'
  end

  def create
    @auth_hash = auth_hash

    if session[:is_tutor]

      if Tutor.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid])
        @tutor = Tutor.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid])
        session[:tutor_id] = @tutor.id
        redirect_to appointment_index_path
      else
        @tutor = Tutor.create_from_omniauth(auth_hash)
        session[:tutor_id] = @tutor.id
        redirect_to edit_tutor_path(current_tutor)
      end
    
    else

      if Student.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid])
        @student = Student.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid])
        session[:student_id] = @student.id
        redirect_to appointment_index_path
      else
        @student = Student.create_from_omniauth(auth_hash)
        session[:student_id] = @student.id
        redirect_to edit_student_path(current_student)
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
