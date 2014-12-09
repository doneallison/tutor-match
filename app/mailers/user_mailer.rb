class UserMailer < ActionMailer::Base
  default from: "tutormatchapp@gmail.com"
  
  def welcome_email(user)
    @user = user
    @url  = 'http://tutormatch.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to TutorMatch')
  end

  def cancellation_email(tutor, students, canceled_by)
  	recipients = []
    @students = []
    recipients << tutor.email
    @tutor = tutor
    students.each do |student|
      recipients << student.email
      @students << student
    end
    @canceled_by = canceled_by
  	mail(to: recipients, subject: 'Appointment Cancellation Notification')
  end

  def confirmation_email(tutor, students)
    recipients = []
    @students = []
    recipients << tutor.email
    @tutor = tutor
    students.each do |student|
      recipients << student.email
      @students << student
    end
    mail(to: recipients, subject: 'Appointment Confirmation Notification')
  end

  def appointment_request_email(student, tutor)
    recipients = []
    @student = student
    @tutor = tutor
    recipients.push(student.email, tutor.email)
    mail(to: recipients, subject: 'Appointment Request Notification')
  end

end
