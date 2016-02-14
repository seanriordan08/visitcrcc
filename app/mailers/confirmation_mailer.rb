class ConfirmationMailer < Devise::Mailer

  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer/confirmation_instructions.html.erb' # to make sure that your mailer uses the devise views

end
