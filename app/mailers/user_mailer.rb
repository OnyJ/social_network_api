class UserMailer < ApplicationMailer
  default from: 'lawebsquad@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'https://uclic.co/login/'
    mail(to: @user.email, subject: 'Welcome to Uclic')
  end
end
