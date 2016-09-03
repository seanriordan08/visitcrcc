class InquiriesController < ApplicationController

  RESPONSE_MESSAGE_SUCCESS = "Question sent! We'll reply as soon as we can."
  RESPONSE_MESSAGE_ERROR = "There was an error - Please fill out all fields"

  def new
  end

  def create
    email_body = params[:form_data][:inquiry][:body]
    email_address = params[:form_data][:inquiry][:email]

    is_registered = User.where(email: email_address).exists?

    @inquiry = Inquiry.create(email: email_address, registered: is_registered, body: email_body)

    if @inquiry.save
      flash.now[:success] = RESPONSE_MESSAGE_SUCCESS
      head :ok, content_type: "text/html"
    else
      flash.now[:error] = RESPONSE_MESSAGE_ERROR
      head 400, content_type: "text/html"
    end

  end

end
