module ApplicationHelper

  def resource_name
    :user
  end

  def resource_class
    User
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def get_avatar(user)
    "avatars/material/" + user.gender + "/" + user.avatar.face + "/" + user.avatar.hair + "-" + user.avatar.eyes + "-" + user.avatar.skin + ".png"
  end

  def make_unique
    SecureRandom.base64(24)
  end

end
