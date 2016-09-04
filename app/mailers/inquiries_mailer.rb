class InquiriesMailer < ApplicationMailer

  def inquiry_email(user_email, email_body)
    @email = user_email
    @body = email_body
    mail(to: 'info@visitcrcc.org', subject: 'Inquiry (from website)')
  end

end
