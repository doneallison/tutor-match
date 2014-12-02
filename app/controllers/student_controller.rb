class StudentController < ApplicationController

  def edit

    @student = current_student
  end

end
