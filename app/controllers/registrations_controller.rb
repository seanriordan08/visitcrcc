class RegistrationsController < Devise::RegistrationsController

  #Uncomment if you want to stop static pages from /users/sign_in from loading
  #clear_respond_to

  respond_to :json
end