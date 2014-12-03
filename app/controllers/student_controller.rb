class StudentController < ApplicationController

  def edit
    @student = current_student
  end

  def update
    # @student = Student.find(params[:id])
    @student = current_student
    @student.name = params[:student][:name]
    @student.email = params[:student][:email]
    @student.slack = params[:student][:slack]
    @student.github = params[:student][:github]
    @student.bio = params[:student][:bio]
    @student.save

    redirect_to appointment_index_path
  end

end
