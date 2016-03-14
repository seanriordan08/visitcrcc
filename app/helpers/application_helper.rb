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

  def all_avatar_faces
    if Rails.env.development?
      [['Square','Face-1'],['Patch','Face-2'],['Round','Face-3'],['Shaggy','Face-4'],['McFly','Face-5'], ['GlassNoPart','Face-6']]
    else
      [
        ['Square','Face-1'],['Patch','Face-2'],['Round','Face-3'],['Shaggy','Face-4'],['McFly','Face-5'],
        ['GlassNoPart','Face-6'],['Shaft','Face-7'],['Mono','Face-8'],['MiddlePart','Face-9'],['SidePart','Face-10'],
        ['Ring','Face-11'],['FiveOclock','Face-12'],['Chin','Face-13'],['Burns','Face-14'],['CleanShort','Face-15'],
        ['CleanLong','Face-16'],['Stash','Face-17'],['Dome','Face-18'],['Buzz','Face-19'],['BuzzPeak','Face-20']
      ]
    end
  end

end
