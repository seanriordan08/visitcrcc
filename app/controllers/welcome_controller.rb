class WelcomeController < ApplicationController
  after_action :allow_iframe, only: :index

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

  def sermons
  end

  def serve
  end

  def new_here
  end

  def get_involved
  end

  def contact_us
  end

  private

  def allow_iframe
    response.headers.except! 'X-Frame-Options'
    response.headers['Access-Control-Allow-Origin'] = '*'
  end

end
