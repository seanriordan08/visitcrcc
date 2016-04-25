class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def edit_user
    @user = User.find(params[:id])
    flash[:admin] = true
    render nothing: true
  end

end
