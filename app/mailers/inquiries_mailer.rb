class InquiriesMailer < ApplicationMailer
  # default from: "info@visitcrcc.org"

  def inquiry_email(user_email, email_body)
    @email = user_email
    @body = email_body
    mail(to: 'info@visitcrcc.org', from: @email, subject: 'Inquiry (from website)', reply_to: @email)
  end

end
