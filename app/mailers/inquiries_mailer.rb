class InquiriesMailer < ApplicationMailer
  # default from: "info@visitcrcc.org"

  def inquiry_email(user_email, email_body)
    @email = user_email
    @body = email_body
    recipient = Rails.env == 'development' ? 'sean.riordan08@gmail.com' : 'info@visitcrcc.org'
    mail(to: recipient, from: @email, subject: 'Question/Comment', reply_to: @email)
  end

end
