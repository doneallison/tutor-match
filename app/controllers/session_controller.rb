class SessionController < ApplicationController

  def new
    redirect_to '/auth/github'
  end

  def create
# binding.pry
    @auth_hash = auth_hash

    if session[:is_tutor]

      if Tutor.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid])
        @tutor = Tutor.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid])
        redirect_to appointment_index_path
      else
        @tutor = Tutor.create_from_omniauth(auth_hash)
        session[:tutor_id] = @tutor.id
        redirect_to edit_tutor_path(current_tutor)
      end
    
    else

      if Student.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid])
        @student = Student.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid])
        redirect_to appointment_index_path
      else
        @student = Student.create_from_omniauth(auth_hash)
        session[:student_id] = @student.id
        redirect_to edit_student_path(current_student)
      end
      
    end

  end

  # def create
  #   @auth_hash = auth_hash
  #   binding.pry
  #   if session[:is_tutor]
  #     @tutor = Tutor.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid]) || Tutor.create_from_omniauth(auth_hash)
  #     if @tutor
  #          session[:tutor_id] = @tutor.id
  #          redirect_to edit_tutor_path(current_tutor)
  #     else
  #          redirect_to root_url
  #     end
  #   else
  #     @student = Student.find_by_provider_and_uid(auth_hash[:provider], auth_hash[:uid]) || Student.create_from_omniauth(auth_hash)
  #     if @student
  #          session[:student_id] = @student.id
  #          redirect_to edit_student_path(current_student)
  #     else
  #          redirect_to root_url
  #     end
  #   end
  # end

  def destroy
    reset_session
    redirect_to root_url
  end

  protected

    def auth_hash
      request.env['omniauth.auth']
    end
end
