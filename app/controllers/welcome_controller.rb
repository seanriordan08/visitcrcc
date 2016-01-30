class WelcomeController < ApplicationController

  def index
    @biblia_key = Rails.application.secrets.biblia_api_dev_key if Rails.env.development?
  end

  def staff
  end

end
