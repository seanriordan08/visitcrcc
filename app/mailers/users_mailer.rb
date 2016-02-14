class UsersMailer < ApplicationMailer
  default from: 'info@visitcrcc.org'

  def welcome_email(user)
    @user = user
    @url  = 'http://google.com'
    mail(to: @user.email, subject: 'Welcome to Castle Rock Community Church!')
  end

end
