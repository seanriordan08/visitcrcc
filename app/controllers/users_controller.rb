class UsersController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.js
    end
  end

  def new

  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver_now

        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @user = User.find(params[:id])

    respond_to do |format|
      format.js
    end
  end

  def update
    user = User.find(params[:id])

    user.update_attributes(user_params)

    respond_to do |format|
      format.js
    end
  end

  def update_avatar
    user = User.find(params[:id])
    avatar = user.avatar
    avatar.update(skin: params[:skin])
# binding.pry
    respond_to do |format|
      format.js { render layout: false, content_type: 'text/javascript', locals: { selected_user: user, thing: "some_text" } }
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :send_emails, :role_description, :staff, avatar_attributes: [:id, :skin] )
  end

end
