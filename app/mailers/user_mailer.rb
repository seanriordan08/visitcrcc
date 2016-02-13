class UserMailer < ApplicationMailer
  default from: 'info@visitcrcc.org'

  def welcome_email(user)
    @url  = 'http://example.com/login'
    mail(to: user.email, subject: 'Welcome to Castle Rock Community Church!')
  end

end
