class WelcomeController < ApplicationController

  def index
    if Rails.env.development?
      @biblia_key = Rails.application.secrets.biblia_api_dev_key
    else
      @biblia_key = Rails.application.secrets.biblia_api_prod_key
    end

  end

  def staff
    @staff = User.where(staff: true)
  end

  def declaration_of_faith
  end

  def events
    @contents = Event.all

    respond_to do |format|
      format.html { render "events/index" }
    end
  end

  def sermons
  end

  def serve
  end

  def new_here
  end

  def get_involved
  end

end
