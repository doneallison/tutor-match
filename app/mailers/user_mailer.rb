class UserMailer < ActionMailer::Base
  default from: "tutormatchapp@gmail.com"
  
  def welcome_email(user)
    @user = user
    @url  = 'http://tutormatch.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to TutorMatch')
  end

end
