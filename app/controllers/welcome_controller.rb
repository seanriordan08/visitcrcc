class WelcomeController < ApplicationController

  def index
    if Rails.env.development?
      @biblia_key = Rails.application.secrets.biblia_api_dev_key
    else
      @biblia_key = Rails.application.secrets.biblia_api_prod_key
    end

  end

  def staff
    @staff = User.where(role: ['admin', 'staff'])
  end

  def statement_of_faith
  end

  def sermons
  end

end
